using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class Conceptos
    {
        //id Kardex
        public int id { get; set; }
        //descripcion
        public string descripcion { get; set; }
        //Importe
        public double importe { get; set; }

        public string cuenta_contable { get; set; }
    }
}
