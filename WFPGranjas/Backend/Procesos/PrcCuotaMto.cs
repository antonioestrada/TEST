﻿
using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas.Backend.Procesos
{
    class PrcCuotaMto
    {
        #region consulta catalogo periodos
        public void consultaPeriodos(ComboBox cmb, int op)
        {


            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_PrcCuotas_CPeriodo("+op+")");
            //siclamos cada registro que contiene nuestro reader
            Dictionary<String, String> periodos = new Dictionary<String, String>();
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                String  id      = (reader.GetValue(0).ToString());
                String periodo  = reader.GetValue(1).ToString();
        

                periodos.Add(id, periodo);

            }
            var ab = from a in periodos
                     orderby a.Key
                     select a;
            cmb.DataSource = ab.ToList();
            cmb.DisplayMember = "value";
            cmb.ValueMember = "Key";

            Conexion.FinalizarSesion();
        }
        #endregion
        #region registra  cuotas
        public Boolean registroCuotas(Object[] parames)
        {

            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_PrcCuotas_AddCuotaMA", parames);

            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion

    }
}