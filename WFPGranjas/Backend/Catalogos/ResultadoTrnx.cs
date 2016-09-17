using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class ResultadoTrnx
    {
        int cve_resultado;
        String mensaje;

        public int Cve_resultado
        {
            get { return cve_resultado; }
            set { cve_resultado = value; }
        }
        public String Mensaje
        {
            get { return mensaje; }
            set {mensaje = value; }
        }
        //para el combro
        public string id_mzaDTO { get; set; }
        public String mzaDTO { get; set; }

        //para medidor
        public int idLoteDTO { get; set; }
        public string conoloDTO { get; set; }
        public string direccionDTO { get; set; }
        public double m2DTO { get; set; }
        public string idMedidorDTO { get; set; }
        public string medidorDTO { get; set; }
        public string contratoDTO { get; set; }
        public double cnaDTO { get; set; }
        public int idConoloDTO { get; set; }

        //para paramMantenimiento
        public string Pcode_param { get; set; }
        public string Pvalor { get; set; }

        //para tarifaMantenimiento
        public string tariID { get; set; } //-- OTRO
        public string tariTipo { get; set; }
        public string tariValor { get; set; }
        public string tariFechaAplica { get; set; }
        public string tariEstatus { get; set; }
    }
}
