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
    class rptRecibos
    {
        public void rptReciboAgua(CrystalReportViewer rptViewer, int op, string inParam1, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReciboAgua.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAgua(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            dsReciboAgua dsR = new dsReciboAgua();
            while (reader.Read())
            {
                dsR.DTRAColono.AddDTRAColonoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString());
            }
            Conexion.FinalizarSesion();

            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAgua(2,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            
            while (reader.Read())
            {
                dsR.DTRALectura.AddDTRALecturaRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString());
            }
            Conexion.FinalizarSesion();

            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAgua(3,'" + inParam1 + "','3','" + inParam3 + "')");

            while (reader.Read())
            {
                dsR.DTRAPartidas.AddDTRAPartidasRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(),Decimal.Parse( reader.GetValue(3).ToString()), reader.GetValue(4).ToString());
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsR);
            //cryRpt.SetDataSource(dsR.Tables["DTRAColono"]);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "medidores.pdf";
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
    }
}
