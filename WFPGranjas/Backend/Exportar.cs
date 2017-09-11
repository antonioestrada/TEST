using System;

using System.Windows.Forms;

namespace ExportarDatagridviewToExcel
{
    class Exportar
    {

        //Exporta Datagridview a Archivo de Excel
        public void ExportarDataGridViewExcel(DataGridView grd, int op)
        {
            try
            {
            
            SaveFileDialog fichero = new SaveFileDialog();
            fichero.Filter = "Excel (*.xls)|*.xls";
                if (op == 1)
                    fichero.FileName = "Consumo_CBA";
                else if (op == 2)
                    fichero.FileName = "Consumo_Tarifas";

                if (fichero.ShowDialog() == DialogResult.OK)
            {
                Microsoft.Office.Interop.Excel.Application aplicacion;
                Microsoft.Office.Interop.Excel.Workbook libros_trabajo;
                Microsoft.Office.Interop.Excel.Worksheet hoja_trabajo;

                aplicacion = new Microsoft.Office.Interop.Excel.Application();
                libros_trabajo = aplicacion.Workbooks.Add();
                hoja_trabajo =
                    (Microsoft.Office.Interop.Excel.Worksheet)libros_trabajo.Worksheets.get_Item(1);
                    if (op == 1)
                    {
                        hoja_trabajo.Cells[1, 1] = "Colono";
                        hoja_trabajo.Cells[1, 2] = "Contrato";
                        hoja_trabajo.Cells[1, 3] = "Periodo de Consumo";
                        hoja_trabajo.Cells[1, 4] = "CBA Asignado";
                        hoja_trabajo.Cells[1, 5] = "Consumo";
                    }
                    else if (op == 2)
                    {
                        hoja_trabajo.Cells[1, 1] = "Periodo de Consumo";
                        hoja_trabajo.Cells[1, 2] = "Consumo m3";
                        hoja_trabajo.Cells[1, 3] = "Tarifa";
                        hoja_trabajo.Cells[1, 4] = "Cuota $";
                    }
                    //Recorremos el DataGridView rellenando la hoja de trabajo
                    for (int i = 0; i < grd.Rows.Count; i++)
                {
                    for (int j = 0; j < grd.Columns.Count; j++)
                    {
                        if ((grd.Rows[i].Cells[j].Value == null)==false)
                        {
                            hoja_trabajo.Cells[i + 2, j + 1] = grd.Rows[i].Cells[j].FormattedValue;  
                        }
                    }
                }
                libros_trabajo.SaveAs(fichero.FileName,
                    Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal);
                libros_trabajo.Close(true);
                aplicacion.Quit();
            }
            }
            catch (Exception ex)
            {
              MessageBox.Show("Error al exportar la informacion debido a: "+ex.ToString());
            }
           
         }
        }
    }


