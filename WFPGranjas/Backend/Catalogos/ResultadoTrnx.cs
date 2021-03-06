﻿using System;
using System.Collections.Generic;
using System.Data;
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

        //para tarifaAgua
        public int siguienteRenglon { get; set; }

        //para lecturasConsumos
        public int periodoAnt { get; set; }
        public int anioAnt { get; set; }
        public string lectura { get; set; }
        public string lecturaAnt { get; set; }

        //para periodos y año
        public string periodoEstatus { get; set; }
        public int anioEstatus { get; set; }

        //para periodos y año
        public int result { get; set; }
        public int servicio { get; set; }
        public string fecha { get; set; }
        public double importe { get; set; }

        //
        public double resultCanMed { get; set; }
        public double resultM2Lote { get; set; }

        //12 meses de cba retorna/setea
        public double mes1 { get; set; }
        public double mes2 { get; set; }
        public double mes3 { get; set; }
        public double mes4 { get; set; }
        public double mes5 { get; set; }
        public double mes6 { get; set; }
        public double mes7 { get; set; }
        public double mes8 { get; set; }
        public double mes9 { get; set; }
        public double mes10 { get; set; }
        public double mes11 { get; set; }
        public double mes12 { get; set; }

        public DataTable tableRegistros
        {
            get;set;
        }
    }
}
