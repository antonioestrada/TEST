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
            cryRpt = new ReportDocument();
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

        public void rptConsumosContrato(CrystalReportViewer rptViewer, int op, string mes, string anio)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crRegConsumosContrato.rpt");

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_consumos(" + op + ",'" + mes + "','" + anio + "')");
            dsReporteConsumos dsM = new dsReporteConsumos();
            while (reader.Read())
            {
                dsM.DTConsumoContrato.AddDTConsumoContratoRow(1,reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString(), Convert.ToInt32(reader.GetValue(7).ToString()), Convert.ToInt32(reader.GetValue(8).ToString()));
            }
            Conexion.FinalizarSesion();

            cryRpt.SetDataSource(dsM.Tables["DTConsumoContrato"]);
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


        public void rptIngresosDia(CrystalReportViewer rptViewer, int op, string fecha)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            ReportDocument crySubRpt = new ReportDocument();
            ReportDocument crySubRpt2 = new ReportDocument();


            // crySubRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReporteIngresos.rpt");
            crySubRpt.Load(@"" + vGlobal.pathReportes + "crReporteIngresos_matto.rpt");
            crySubRpt2.Load(@"" + vGlobal.pathReportes + "crReporteIngresos_otros.rpt");
            dsIngresosDiarios dsM = new dsIngresosDiarios();
            //dsIngresosDiarios dsM1 = new dsIngresosDiarios();

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ingresosDiarios(3, '"+fecha+"', '')");
            
            while (reader.Read())
            {
                dsM.DTIngresosDiarios.AddDTIngresosDiariosRow(1,reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), decimal.Parse(reader.GetValue(2).ToString()), decimal.Parse(reader.GetValue(3).ToString()), decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString());
            }
            Conexion.FinalizarSesion();

            

            //dsM = new dsIngresosDiarios();
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ingresosDiarios(4, '" + fecha + "', '')");

            while (reader.Read())
            {
                dsM.DTIngresosMatto.AddDTIngresosMattoRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), decimal.Parse(reader.GetValue(2).ToString()), decimal.Parse(reader.GetValue(3).ToString()), decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString());
            }
            Conexion.FinalizarSesion();

            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ingresosDiarios(5, '" + fecha + "', '')");

            while (reader.Read())
            {
                dsM.DTIngresosOtros.AddDTIngresosOtrosRow(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), decimal.Parse(reader.GetValue(2).ToString()), decimal.Parse(reader.GetValue(3).ToString()), decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString());
            }
            Conexion.FinalizarSesion();

            crySubRpt.SetDataSource(dsM);
            crySubRpt2.SetDataSource(dsM);
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
            dsGraph1 dsM = new dsGraph1();

            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAgua(10,'0','0','0')");

            while (reader.Read())
            {
                dsM.DTGrafica1.AddDTGrafica1Row(1, reader.GetValue(0).ToString(), reader.GetValue(1).ToString(), Int32.Parse(reader.GetValue(2).ToString()), Int32.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();

             reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAgua(11,'0','0','0')");

           /* while (reader.Read())
            {
                dsM.DTGrafica2.AddDTGrafica2Row(1, reader.GetValue(0).ToString(), "0", Int32.Parse(reader.GetValue(1).ToString()));
            }
            Conexion.FinalizarSesion();
            */
            cryRpt.SetDataSource(dsM.Tables["DTGrafica1"]);
            // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
           // rptViewer.ReportSource = cryRpt;
            //rptViewer.Refresh();

            //GENERAR PDF

            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "grafica.pdf";
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


        #region recibo de AGUA
        public void graph1(CrystalReportViewer rptViewer, int op, string inParam1, string inParam2, string inParam3)
        {
            Globales vGlobal = new Globales();
            ReportDocument cryRpt = new ReportDocument();
            ReportDocument crySubRpt = new ReportDocument();

            cryRpt = new ReportDocument();
            cryRpt.Load(@"" + vGlobal.pathReportes + "crReciboAg.rpt");
            crySubRpt.Load(@"" + vGlobal.pathReportes + "crReciboAgua2.rpt");
            dsReciboMAnto dsR = new dsReciboMAnto();
            //***********ENCABEZADO DEL RECIBO*********************
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAguaA(1,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTRMEncabezado.AddDTRMEncabezadoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), reader.GetValue(4).ToString(), reader.GetValue(5).ToString(), reader.GetValue(6).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE COLONO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAguaA(2,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTRMColono.AddDTRMColonoRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE PARTIDAS DE COBRO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAguaA(3,'" + inParam1 + "','" + inParam2 + "','0')");
            while (reader.Read())
            {
                dsR.DTRMPartidas.AddDTRMPartidasRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), reader.GetValue(2).ToString(), reader.GetValue(3).ToString(), Decimal.Parse(reader.GetValue(4).ToString()));
            }
            Conexion.FinalizarSesion();

            //***********DATOS FORMAS DE PAGO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAguaA(4,'" + inParam1 + "','" + inParam2 + "','" + inParam3 + "')");
            while (reader.Read())
            {
                dsR.DTRMPagos.AddDTRMPagosRow(Int32.Parse(reader.GetValue(0).ToString()), reader.GetValue(1).ToString(), Decimal.Parse(reader.GetValue(2).ToString()), reader.GetValue(3).ToString(), Decimal.Parse(reader.GetValue(4).ToString()), reader.GetValue(5).ToString(), Decimal.Parse(reader.GetValue(6).ToString()), reader.GetValue(7).ToString());
            }
            Conexion.FinalizarSesion();

            //***********DATOS DE MORATORIO*********************
            reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_report_ReciboAguaA(5,'" + inParam1 + "','" + inParam2 + "','0')");
            while (reader.Read())
            {
                dsR.DTRMMora.AddDTRMMoraRow(Int32.Parse(reader.GetValue(0).ToString()), Int32.Parse(reader.GetValue(1).ToString()), Decimal.Parse(reader.GetValue(2).ToString()), Int32.Parse(reader.GetValue(3).ToString()));
            }
            Conexion.FinalizarSesion();
            string Folio = "";
            DataRow r = dsR.DTRMPagos.Rows[0];
            Folio = r["folio"].ToString() + inParam3;

            crySubRpt.SetDataSource(dsR);
            cryRpt.SetDataSource(dsR);
            // cryRpt.SetParameterValue("empresa", vGlobal.empresa);
            rptViewer.ReportSource = cryRpt;
            rptViewer.Refresh();

            //GENERAR PDF
            ExportOptions CrExportOptions;
            DiskFileDestinationOptions CrDiskFileDestinationOptions = new DiskFileDestinationOptions();
            PdfRtfWordFormatOptions CrFormatTypeOptions = new PdfRtfWordFormatOptions();
            CrDiskFileDestinationOptions.DiskFileName = @"" + vGlobal.pathReportesPDF + "reciboCAgua" + Folio + ".pdf";
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
