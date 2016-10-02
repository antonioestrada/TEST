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
    class rptMedidores
    {
        public void rptListaMedidores(CrystalReportViewer rptViewer, int op, string manzana)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crMedidorSQL.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_listamedidor("+op+",'"+manzana+"')");
            dsMedidores dsM = new dsMedidores();
            while (reader.Read())
            {
                dsM.DTMedidores.AddDTMedidoresRow(reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), Convert.ToDouble(reader.GetValue(4).ToString()), Convert.ToDouble(reader.GetValue(5).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM.Tables["DTMedidores"]);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @""+vGlobal.pathReportesPDF+"medidores.pdf";
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
