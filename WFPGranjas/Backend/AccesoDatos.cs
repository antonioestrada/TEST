using System;
//using FirebirdSql.Data.FirebirdClient;
using MySql.Data.MySqlClient;

namespace AccesoDatos
{
    public class serverbd : GDatos
    {
        //private FbConnectionStringBuilder connectionString = new FbConnectionStringBuilder();
        MySqlConnectionStringBuilder connectionString = new MySqlConnectionStringBuilder();

        /*
         * Continuaremos con el método Comando, procediendo de igual forma que en los anteriores. 
         * En este caso, además, implementaremos un mecanismo de “preservación” de los Comandos creados,
         * para acelerar su utilización. Esto es, cada procedimiento que sea accedido, se guardará 
         * en memoria hasta que la instancia del objeto se destruya. Para ello, declararemos una variable 
         * como HashTable para la clase, con el modificador Shared (compartida) que permite 
         * persistir la misma entre creaciones de objetos
         */
        static readonly System.Collections.Hashtable ColComandos = new System.Collections.Hashtable();
 
 
        public override sealed string CadenaConexion
        {
            get
            {
                if (MCadenaConexion.Length == 0)
                {
                    if (MBase.Length != 0 && MServidor.Length != 0)
                    {


                        connectionString.Server = MServidor;

                        connectionString.Database = MPath;
                        //connectionString.Database = "\\database\\AJPDSOFT.FDB";

                        connectionString.UserID = MUsuario;


                        connectionString.Password = MPassword;
                        connectionString.ConnectionTimeout = 100000;


               //         connectionString.Charset = "UTF8";


                 //       connectionString.Dialect = 3;

                        return connectionString.ToString();
                    }
                    throw new Exception("No se puede establecer la cadena de conexión en la clase DatosSQLServer");
                }
                return MCadenaConexion = CadenaConexion;
 
            }// end get
            set
            { MCadenaConexion = value; } // end set
        }// end CadenaConexion
 
 
        /*	
         * Agregue ahora la definición del procedimiento CargarParametros, el cual deberá asignar cada valor 
         * al parámetro que corresponda (considerando que, en el caso de SQLServer©, el parameter 0 
         * siempre corresponde al “return Value” del Procedimiento Almacenado). Por otra parte, en algunos casos,
         * como la ejecución de procedimientos almacenados que devuelven un valor como parámetro de salida, 
         * la cantidad de elementos en el vector de argumentos, puede no corresponder con la cantidad de parámetros. 
         * Por ello, se decide comparar el indicador con la cantidad de argumentos recibidos, antes de asignar el valor.
         * protected override void CargarParametros(System.Data.IDbCommand Com, System.Object[] Args)
         */
        protected override void CargarParametros(System.Data.IDbCommand com, Object[] args)
        {
            for (int i = 1; i < com.Parameters.Count; i++)
            {
                
                   var p = (MySqlParameter)com.Parameters[i-1];
                p.Value = i <= args.Length ? args[i - 1] ?? DBNull.Value  : null;
            } // end for
        } // end CargarParametros
 
 
        /*
         * En el procedimiento Comando, se buscará primero si ya existe el comando en dicha Hashtable para retornarla 
         * (convertida en el tipo correcto). Caso contrario, se procederá a la creación del mismo, 
         * y su agregado en el repositorio. Dado que cabe la posibilidad de que ya estemos dentro de una transacción,
         * es necesario abrir una segunda conexión a la base de datos, para obtener la definición de los parámetros 
         * del procedimiento Almacenado (caso contrario da error, por intentar leer sin tener asignado el
         * objeto Transaction correspondiente). Además, el comando, obtenido por cualquiera de los mecanismos 
         * debe recibir la conexión y la transacción correspondientes (si no hay Transacción, la variable es null, 
         * y ese es el valor que se le pasa al objeto Command)
         */
        protected override System.Data.IDbCommand Comando(string procedimientoAlmacenado)
        {
            MySqlCommand com;
            if (ColComandos.Contains(procedimientoAlmacenado))
                com = (MySqlCommand)ColComandos[procedimientoAlmacenado];
            else
            {
                var con2 = new MySqlConnection(CadenaConexion);
                con2.Open();
                com = new MySqlCommand(procedimientoAlmacenado, con2) { CommandType = System.Data.CommandType.StoredProcedure };
                MySqlCommandBuilder.DeriveParameters(com);
                
                con2.Close();
                con2.Dispose();
                ColComandos.Add(procedimientoAlmacenado, com);
            }//end else
            com.Connection = (MySqlConnection)Conexion;
            com.Transaction = (MySqlTransaction)MTransaccion;
            return com;
        }// end Comando
 
        protected override System.Data.IDbCommand ComandoSql(string comandoSql)
        {
            var com = new MySqlCommand(comandoSql, (MySqlConnection)Conexion, (MySqlTransaction)MTransaccion);
            return com;
        }// end Comando
 
 
        /* 
         * Luego implementaremos CrearConexion, donde simplemente se devuelve una nueva instancia del 
         * objeto Conexión de SqlClient, utilizando la cadena de conexión del objeto.
         */
        protected override System.Data.IDbConnection CrearConexion(string cadenaConexion)
        { return new MySqlConnection(cadenaConexion); }
 
 
        //Finalmente, es el turno de definir CrearDataAdapter, el cual aprovecha el método Comando para crear el comando necesario.
        protected override System.Data.IDataAdapter CrearDataAdapter(string procedimientoAlmacenado, params Object[] args)
        {
            var da = new MySqlDataAdapter((MySqlCommand)Comando(procedimientoAlmacenado));
            if (args.Length != 0)
                CargarParametros(da.SelectCommand, args);
            return da;
        } // end CrearDataAdapter
 
        //Finalmente, es el turno de definir CrearDataAdapter, el cual aprovecha el método Comando para crear el comando necesario.
        protected override System.Data.IDataAdapter CrearDataAdapterSql(string comandoSql)
        {
            var da = new System.Data.SqlClient.SqlDataAdapter((System.Data.SqlClient.SqlCommand)ComandoSql(comandoSql));
            return da;
        } // end CrearDataAdapterSql
 
        /*
         * Definiremos dos constructores especializados, uno que reciba como argumentos los valores de Nombre del Servidor 
         * y de base de datos que son necesarios para acceder a datos, y otro que admita directamente la cadena de conexión completa.
         * Los constructores se definen como procedimientos públicos de nombre New.
         */
        public serverbd()
        {
            Base = "";
            Servidor = "";
            Usuario = "";
            Password = "";
        }// end DatosSQLServer
 
 
        public serverbd(string cadenaConexion)
        { CadenaConexion = cadenaConexion; }// end DatosSQLServer
 
 
        public serverbd(string servidor, string @base)
        {
            Base = @base;
            Servidor = servidor;
        }// end DatosSQLServer
 
 
        public serverbd(string servidor, string @base, string usuario, string password, string path)
        {
            Base = @base;
            Servidor = servidor;
            Usuario = usuario;
            Password = password;
            Path = path;
        }

        /*
        public SqlServer(String test)
        {
    
        connectionString.ServerType = FbServerType.Default;

            connectionString.Database = "C:\\fireBird\\AJPDSOFT.FDB";
            //connectionString.Database = "\\database\\AJPDSOFT.FDB";

            connectionString.UserID = "sysdba";


            connectionString.Password = "cristhian";


            connectionString.Charset = "UTF8";


            connectionString.Dialect = 3;
    }// end DatosSQLServer*/
    }// end class DatosSQLServer
}
