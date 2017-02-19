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
    class rptReportesVarios
    {
        #region reporte Adeudos Mantenimiento
        public void rptAdeudoMtto(CrystalReportViewer rptViewer, int op, int id_Servicio, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReportesVarios.rpt");
            if(id_Servicio==4  )
                cryRpt.Load(@"" + vGlobal.pathReportes + "crReportesVAConvenio.rpt"); 
                if ( id_Servicio == 6)
                cryRpt.Load(@"" + vGlobal.pathReportes + "crReportesVAExtra.rpt");

             dsReportesVarios dsR = new dsReportesVarios();
            //***********ENCABEZADO DEL RECIBO*********************
            /* IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboMantoA(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
             while (reader.Read())
             {
                 dsR.DTRMEncabezado.AddDTRMEncabezadoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString());
             }
             Conexion.FinalizarSesion();*/

            //***********ENCABEZADO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_Reportes(1,'" + id_Servicio + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTEncabezado.AddDTEncabezadoRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE SERVICIO*********************
            if (id_Servicio == 4)
                reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_Reportes(4,'" + id_Servicio + "','" + inParam2 + "','" + inParam3 + "')");
            else
                reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_Reportes(2,'" + id_Servicio + "','" + inParam2 + "','" + inParam3 + "')");
            //CUOTAS CONVENIOS 
            if (id_Servicio == 4)
            {
                while (reader.Read())
                {
                    dsR.DTReportes.AddDTReportesRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(5).ToString(), decimal.Parse(reader.GetValue(6).ToString()), 0, reader.GetValue(7).ToString());
                    
                }
                Conexion.FinalizarSesion();
            }
            //CUOTAS EXTRAORDINARIAS Y CASA CLUB 
            else if (id_Servicio == 5 || id_Servicio == 6)
            {
                while (reader.Read())
                {
                    dsR.DTReportes.AddDTReportesRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), decimal.Parse(reader.GetValue(6).ToString()), 0, reader.GetValue(8).ToString());
                }
                Conexion.FinalizarSesion();
            }
            //CUOTAS MANTENIMIENTO 
            else
            {
                while (reader.Read())
                {
                    dsR.DTReportes.AddDTReportesRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), decimal.Parse(reader.GetValue(6).ToString()), decimal.Parse(reader.GetValue(7).ToString()), reader.GetValue(8).ToString());
                }
                Conexion.FinalizarSesion();
            }
            

           /* string Folio = "";
            DataRow r = dsR.DTReportes.Rows[0];
            Folio = r["mz"].ToString() + inParam3;
            */
            cryRpt.SetDataSource(dsR);
            // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
          /*  ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "recibo_" + Folio + ".pdf";
            // CrDiskFileDestinationOptions.DiskFileName = "c:\\firebird\\reporteMail.pdf";
            CrExportOptions = cryRpt.ExportOptions;
            {
                CrExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                CrExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                CrExportOptions.DestinationOptions = CrDiskFileDestinationOptions;
                CrExportOptions.FormatOptions = CrFormatTypeOptions;
            }
            cryRpt.Export();*/
        }
        #endregion

        #region reporte Adeudos Mantenimiento
        public void rptAdeudoAgua(CrystalReportViewer rptViewer, int op, int id_Servicio, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReportesVAAgua.rpt");

            dsReportesVarios dsR = new dsReportesVarios();
            //***********ENCABEZADO DEL RECIBO*********************
            /* IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboMantoA(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
             while (reader.Read())
             {
                 dsR.DTRMEncabezado.AddDTRMEncabezadoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString());
             }
             Conexion.FinalizarSesion();*/

            //***********ENCABEZADO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_Reportes(1,'" + id_Servicio + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTEncabezado.AddDTEncabezadoRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE SERVICIO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_rpt_Reportes(3,'" + id_Servicio + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTReportes.AddDTReportesRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString(), decimal.Parse(reader.GetValue(7).ToString()), decimal.Parse(reader.GetValue(7).ToString()), reader.GetValue(8).ToString());
            }
            Conexion.FinalizarSesion();



            /* string Folio = "";
             DataRow r = dsR.DTReportes.Rows[0];
             Folio = r["mz"].ToString() + inParam3;
             */
            cryRpt.SetDataSource(dsR);
            // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            /*  ExportOptions CrExportOptions;
              DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
              PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
              CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "recibo_" + Folio + ".pdf";
              // CrDiskFileDestinationOptions.DiskFileName = "c:\\firebird\\reporteMail.pdf";
              CrExportOptions = cryRpt.ExportOptions;
              {
                  CrExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                  CrExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                  CrExportOptions.DestinationOptions = CrDiskFileDestinationOptions;
                  CrExportOptions.FormatOptions = CrFormatTypeOptions;
              }
              cryRpt.Export();*/
        }
        #endregion
    }
}
