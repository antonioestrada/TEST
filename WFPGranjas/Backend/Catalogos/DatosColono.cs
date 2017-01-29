using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class DatosColono
    {
        public int idColono { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
        public string correo { get; set; }
        public string telefono { get; set; }
        public int idLote { get; set; }
        public string lote { get; set; }
        public int idManzana { get; set; }
        public string manzana { get; set; }
        public int folio { get; set; }
        public string fechaPago { get; set; }


    }
}
