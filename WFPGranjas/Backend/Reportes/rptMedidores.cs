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

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_listamedidor("+op+",'"+manzana+"','')");
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

        public void rptRegLecturas(CrystalReportViewer rptViewer, int op, string in_periodoAnt, string in_anioAnt)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            //1.- indicamos el nombre del reporte
            cryRpt.Load(@"" + vGlobal.pathReportes + "crRegLecturas.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_listamedidor(" + op + ",'" + in_periodoAnt + "','" + in_anioAnt + "')");
            dsMedidores dsM = new dsMedidores();
            while (reader.Read())
            {
                dsM.DTRegLecturas.AddDTRegLecturasRow(reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(),Int32.Parse(reader.GetValue(5).ToString()), Int32.Parse(reader.GetValue(6).ToString()), Int32.Parse(reader.GetValue(7).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM.Tables["DTRegLecturas"]);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "regLecturas.pdf";
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

        public void rptRegLecturasConsu(CrystalReportViewer rptViewer, int op, string in_periodoAnt, string in_anioAnt)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            //1.- indicamos el nombre del reporte
            cryRpt.Load(@"" + vGlobal.pathReportes + "crRegLecturasCons.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_listamedidor(" + op + ",'" + in_periodoAnt + "','" + in_anioAnt + "')");
            dsMedidores dsM = new dsMedidores();
            while (reader.Read())
            {
                dsM.DTRegLecturas.AddDTRegLecturasRow(reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), Int32.Parse(reader.GetValue(5).ToString()), Int32.Parse(reader.GetValue(6).ToString()), Int32.Parse(reader.GetValue(7).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM.Tables["DTRegLecturas"]);
            cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "LecturasConsumos.pdf";
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

        public void rptConsumos(CrystalReportViewer rptViewer, int op, string manzana)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crMedidorSQL.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_listamedidor(" + op + ",'" + manzana + "','')");
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
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "consumos.pdf";
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


        public void rptIngresosDia(CrystalReportViewer rptViewer, int op, string manzana)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReporteIngresos.rpt");
            dsIngresosDiarios dsM = new dsIngresosDiarios();

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ingresosDiarios(1, '', '')");
            
            while (reader.Read())
            {
                dsM.DTIngresosDiarios.AddDTIngresosDiariosRow(1,reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), decimal.Parse(reader.GetValue(2).ToString()), decimal.Parse(reader.GetValue(3).ToString()), decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString());
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM);
           // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "ingresos.pdf";
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

        public void rptGrafica(CrystalReportViewer rptViewer, int op, string manzana)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crGrafica.rpt");
            dsEdoCuenta dsM = new dsEdoCuenta();

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_grafica1(1)");

            while (reader.Read())
            {
                dsM.DTGrafica1.AddDTGrafica1Row(1, reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), Int32.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM);
            // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF

            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "ingresos.pdf";
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
