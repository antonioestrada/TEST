using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class Cuota
    {
        //id Kardex
        public int id { get; set; }
        //id Servicio
        public int idServicio { get; set; }
        //Importe
        public double importe { get; set; }
        //para medidor
        public String estatus { get; set; }
        //para periodo
        public String periodo { get; set; }
        //para id periodo
        public String idPeriodo { get; set; }
        //para servicio
        public String servicio { get; set; }
        //para servicio
        public String tarifa { get; set; }
        //para anio
        public String anio { get; set; }
        //Mora
        public double moratorio { get; set; }
        //Cuota actualizacion
        public double cargoActualizacion { get; set; }
    }
}
