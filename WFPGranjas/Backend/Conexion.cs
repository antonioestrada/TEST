
using System.Windows.Forms;
using Backend;
using System.Data;
using System.Text;
namespace AccesoDatos
{
    public class Conexion
    {
        public static GDatos GDatos;
        public static int lResult = 0;
        public static bool IniciarSesion(string nombreServidor, string baseDatos, string usuario, string password,string path)
        {
            GDatos = new serverbd(nombreServidor, baseDatos, usuario, password,path);
          //  GDatos = new SqlServer(null);
            return GDatos.Autenticar();
        } //fin inicializa sesion

        public static void FinalizarSesion()
        {
            GDatos.CerrarConexion();
        } //fin FinalizaSesion
        public static void conectar()
        {
            GDatos.Autenticar();

        }// end Autenticar


    }//end class util
}//end namespace
