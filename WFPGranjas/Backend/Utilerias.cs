using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas.Backend
{
    class Utilerias
    {
        //formato final yyyy-mm-dd
        public string formatoFecha(string fecha)
        {

            DateTime fechaTime = DateTime.ParseExact(fecha, "d/MM/yyyy", null);
            String fechaFormat = String.Format("{0:yyyy-MM-dd}", fechaTime);
            String fechaFormato = fechaFormat.Replace("/", ".");
            return fechaFormat;
        }
        //limpiar textbox de groupbox
        public void limpiarTextboxGroupBox(GroupBox gb)
        {
            foreach(var txt in gb.Controls)
            { 
                if(txt is TextBox)
                {
                    ((TextBox)txt).Clear();
                }
            }
        }

       public void validarNumeros(KeyPressEventArgs e, TextBox txt)
        {

            System.Globalization.CultureInfo cc = System.Threading.Thread.CurrentThread.CurrentCulture;

            if (char.IsNumber(e.KeyChar) || e.KeyChar.ToString() == cc.NumberFormat.NumberDecimalSeparator || (e.KeyChar == (char)Keys.Back))
            {
                e.Handled = false;


                if (txt.Text.Contains('.') && e.KeyChar.ToString() == cc.NumberFormat.NumberDecimalSeparator)
                {
                    e.Handled = true;
                }

            }
            else
                e.Handled = true;



            //  double d = Convert.ToDouble(txt.Text);

            //  txt.Text = d.ToString("000,000,000.000"); 
            // txt.Text = txt.Text.ToString( "$ ###,###,###.##0");
        }

        public String numeroRomano(int numero) {
            String numeroRmano=null;
            int Miles = 0, Resto = 0, Cen = 0, Dec = 0, Uni = 0, N = 0;


            //      MessageBox.Show("Ingrese un numero");
            //Console.Write("Ingrese un Numero:");
            N = numero;
            Miles = N / 1000;
            Resto = N % 1000;
            Cen = Resto / 100;
            Resto = Resto % 100;
            Dec = Resto / 10;
            Resto = Resto % 10;
            Uni = Resto;





            //MessageBox.Show("");
            //Console.Write("En Número Romanos es : ");

            switch (Miles)
            {
                case 1: numeroRmano = ("M"); break;
                case 2: numeroRmano = ("MM"); break;
                case 3: numeroRmano = ("MMM"); break;
            }
            switch (Cen)
            {
                case 1: numeroRmano = ("C"); break;
                case 2: numeroRmano = ("CC"); break;
                case 3: numeroRmano = ("CCC"); break;
                case 4: numeroRmano = ("CD"); break;
                case 5: numeroRmano = ("D"); break;
                case 6: numeroRmano = ("DC"); break;
                case 7: numeroRmano = ("DCC"); break;
                case 8: numeroRmano = ("DCCC"); break;
                case 9: numeroRmano = ("CM"); break;
            }
            switch (Dec)
            {
                case 1:
                    numeroRmano = ("X");
                    break;
                case 2:
                    numeroRmano = ("XX");
                    break;
                case 3:
                    numeroRmano = ("XXX");
                    break;
                case 4:
                    numeroRmano = ("XL");
                    break;
                case 5:
                    numeroRmano = ("L");
                    break;
                case 6:
                    numeroRmano = ("LX");
                    break;
                case 7:
                    numeroRmano = ("LXX");
                    break;
                case 8:
                    numeroRmano = ("LXXX");
                    break;
                case 9:
                    numeroRmano = ("XC");
                    break;
            }
            switch (Uni)
            {
                case 1: numeroRmano = ("I"); break;
                case 2: numeroRmano = ("II"); break;
                case 3: numeroRmano = ("III"); break;
                case 4: numeroRmano = ("IV"); break;
                case 5: numeroRmano = ("V"); break;
                case 6: numeroRmano = ("VI"); break;
                case 7: numeroRmano = ("VII"); break;
                case 8: numeroRmano = ("VIII"); break;
                case 9: numeroRmano = ("IX"); break;
            }
            return numeroRmano;

        }
    }


}
