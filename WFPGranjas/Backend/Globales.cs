
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backend
{
    class Globales
    {
       public String Server;
       public String BD;
       public String Usr;
       public String Pwd;
       public String pathBD;
       public String pathSDK;
        public Double cna_param1;
        public int cna_param2;
        public int cna_param3;
       public Backend.Properties config ;
       //public FClientes_Kardex hijo;
      // public FClientes fcte;
       //public FClientes_Actualiza hijoAct;
       //public FListar_Clientes hijoList;
       public Globales() {
           config = new Backend.Properties("C:\\fireBird\\properties.txt");
           Server = config.get("server", "1");
           BD = config.get("bd", "1");
           Usr = config.get("user", "1");
           Pwd = config.get("pass", "1");
           pathBD = config.get("pathBD", "1");
           pathSDK = config.get("pathSDK", "1");
           cna_param1 =Convert.ToDouble(config.get("cna_param1", "1"));
           cna_param2 = Convert.ToInt16(config.get("cna_param2", "1"));
           cna_param3 = Convert.ToInt16(config.get("cna_param3", "1"));
        }

       //public FClientes_Kardex hijo { get; set; }

       //public FClientes_Listar  hijoList { get; set; }
    }
}
