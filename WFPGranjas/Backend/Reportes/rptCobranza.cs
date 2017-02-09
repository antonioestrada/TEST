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
    class rptCobranza
    {
        #region recibo de agua
        public void reportCobranza(CrystalReportViewer rptViewer)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            ReportDocument crySubRpt = new ReportDocument();
            ReportDocument crySubGraficaRpt = new ReportDocument();
            ReportDocument crySubTarifasRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            crySubRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crAvisosCobranza.rpt");

            //***********DATOS DE consumo*********************
             IDataReader reader = Conexion.GDatos.TraerDataReaderSql("SELECT id_medidor,periodo,anio,consumo FROM gestion_granjas.consumos;");
            dsAvisosCobranza dsR = new dsAvisosCobranza();
            while (reader.Read())
            {
                dsR.DTLectura.AddDTLecturaRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), Int32.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********CBA asignado*********************
            reader = Conexion.GDatos.TraerDataReaderSql("SELECT id_factor,periodo,anio,cuota FROM gestion_granjas.cuotas_base_agua;");
            while (reader.Read())
            {
                dsR.DTCBA.AddDTCBARow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), double.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsR);
            //cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "cobranza.pdf";
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

        #region recibo de mantenimiento
        public void rptReciboManto(CrystalReportViewer rptViewer, int op, string inParam1, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReciboManto.rpt");

            //***********DATOS DE COLONO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboManto(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            dsReciboMAnto dsR = new dsReciboMAnto();
            while (reader.Read())
            {
                dsR.DTRMColono.AddDTRMColonoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE PARTIDAS DE COBRO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboManto(3,'" + inParam1 + "','" + inParam2 + "','0')");
            while (reader.Read())
            {
                dsR.DTRMPartidas.AddDTRMPartidasRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), Decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS FORMAS DE PAGO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboManto(6,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTRMPagos.AddDTRMPagosRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString().PadLeft(12, char.Parse("0")), Decimal.Parse(reader.GetValue(2).ToString()), reader.GetValue(3).ToString(), Decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString(), Decimal.Parse(reader.GetValue(6).ToString()), reader.GetValue(7).ToString());
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsR);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "reciboManto"+ inParam2+".pdf";
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

        #region recibo de CONVENIOS
        public void rptReciboConvenio(CrystalReportViewer rptViewer, int op, string inParam1, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReciboConvenio.rpt");

            //***********DATOS DE COLONO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboConvenio(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            dsReciboConvenio dsR = new dsReciboConvenio();
            while (reader.Read())
            {
                dsR.DTRCColono.AddDTRCColonoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE PARTIDAS DE COBRO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboConvenio(3,'" + inParam1 + "','" + inParam2 + "','0')");
            while (reader.Read())
            {

                dsR.DTRCPartidas.AddDTRCPartidasRow(int.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), Decimal.Parse(reader.GetValue(3).ToString()), reader.GetValue(4).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS FORMAS DE PAGO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboConvenio(6,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTRCPagos.AddDTRCPagosRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString().PadLeft(12, char.Parse("0")), Decimal.Parse(reader.GetValue(2).ToString()), reader.GetValue(3).ToString(), Decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString(), Decimal.Parse(reader.GetValue(6).ToString()), DateTime.Parse(reader.GetValue(7).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsR);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "reciboConvenio" + inParam2 + ".pdf";
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
