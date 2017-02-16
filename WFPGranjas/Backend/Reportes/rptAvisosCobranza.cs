using AccesoDatos;
using Backend;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Windows.Forms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Reportes
{
    class rptAvisosCobranza
    {
        Globales vGlobal = new Globales();
        ReportDocument cryRpt = new ReportDocument();
        ReportDocument crySubRpt = new ReportDocument();
        ReportDocument crySubRptConsumos = new ReportDocument();
        ReportDocument crySubTarifasRpt = new ReportDocument();

        #region recibo de agua
        public void getMedidores(CrystalReportViewer rptViewer)
        {
            cryRpt = new ReportDocument();
            crySubRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crAvisoCobranza.rpt");
            //crySubRpt.Load(@"" + vGlobal.pathReportes + "crAvisosSubGraph1.rpt");
            crySubRpt.Load(@"" + vGlobal.pathReportes + "crAvisosSubGraph2.rpt");
            crySubRptConsumos.Load(@"" + vGlobal.pathReportes + "crAvisosSubGraph1.rpt");

            Conexion.FinalizarSesion();
            //***********OBTIENE LISTA DE MEDIDORES*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(99,'0','0','0')");
            List<int> lista= new List<int>();
            while (reader.Read())
            {
                lista.Add(Int32.Parse(reader.GetValue(0).ToString()));
               
            }
            Conexion.FinalizarSesion();

            for (int i=0; i< lista.Count; i++) {
                rptAvisosCob(1,""+lista[i], "1", "1");
            }
        }
        #endregion
        #region recibo de agua
        public void rptAvisosCob(int op, string inParam1, string inParam2, string inParam3)
        {
          

           
            // crySubRpt.Load(@"" + vGlobal.pathReportes + "crSubLecturasRA.rpt");
            //crySubGraficaRpt.Load(@"" + vGlobal.pathReportes + "crSubGraficaRA.rpt");
            //crySubTarifasRpt.Load(@"" + vGlobal.pathReportes + "crSubTarifasRA.rpt");

            dsAvisosCobranza dsR = new dsAvisosCobranza();
            Conexion.FinalizarSesion();
            //***********ENCABEZADO Y PIE PAGINA AVISO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            
            while (reader.Read())
            {
                dsR.DTAC_HeadFooter.AddDTAC_HeadFooterRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS COLONO FIJOS*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(2,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_DatosColono.AddDTAC_DatosColonoRow(Int32.Parse(inParam1), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(),Decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString(), reader.GetValue(6).ToString(), reader.GetValue(7).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS GRAFICA 2 COMPARATIVA*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(4,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_Grafica2.AddDTAC_Grafica2Row(Int32.Parse(inParam1), reader.GetValue(0).ToString(), int.Parse(reader.GetValue(1).ToString()), int.Parse(reader.GetValue(2).ToString()), int.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS GRAFICA 3 COMPARATIVA*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(3,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_Grafica3.AddDTAC_Grafica3Row(Int32.Parse(inParam1), reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), Decimal.Parse(reader.GetValue(2).ToString()), Decimal.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS CONSUMOS*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(5,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_Lecturas.AddDTAC_LecturasRow(Int32.Parse(inParam1), reader.GetValue(1).ToString(), Int32.Parse(reader.GetValue(2).ToString()), Int32.Parse(reader.GetValue(3).ToString()), Int32.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS RECOMENDACION CBA*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(6,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_CBA.AddDTAC_CBARow(Int32.Parse(inParam1), Int32.Parse(reader.GetValue(0).ToString()), Int32.Parse(reader.GetValue(1).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********PARTIDAS CONSUMOS AGUA*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(7,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_PConsumos.AddDTAC_PConsumosRow(Int32.Parse(inParam1),reader.GetValue(0).ToString(), decimal.Parse(reader.GetValue(1).ToString()), reader.GetValue(2).ToString(), Decimal.Parse(reader.GetValue(3).ToString()), Decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********EXCEDENTE*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_AvisosCobranza(8,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTAC_Consumo.AddDTAC_ConsumoRow(Int32.Parse(inParam1),Int32.Parse( reader.GetValue(0).ToString()));
            }
            Conexion.FinalizarSesion();


            cryRpt.SetDataSource(dsR);
            crySubRpt.SetDataSource(dsR.Tables["DTAC_Grafica2"]);
            crySubRptConsumos.SetDataSource(dsR.Tables["DTAC_PConsumos"]);
            //crySubTarifasRpt.SetDataSource(dsR.Tables["DTRATafifas"]);
           // rptViewer.ReportSource = cryRpt;
           // rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "AvisoCobranza" + inParam1 + ".pdf";
            // CrDiskFileDestinationOptions.DiskFileName = "c:\\firebird\\reporteMail.pdf";
            CrExportOptions = cryRpt.ExportOptions;
            {
                CrExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                CrExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                CrExportOptions.DestinationOptions = CrDiskFileDestinationOptions;
                CrExportOptions.FormatOptions = CrFormatTypeOptions;
            }
            cryRpt.Export();
        }
        #endregion
    }
}
