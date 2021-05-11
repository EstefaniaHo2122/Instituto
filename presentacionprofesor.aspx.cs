using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidad;
using CapaNegocio;
using System.Data;

namespace Instituto
{
    public partial class formulario2 : System.Web.UI.Page
    {
        CEprofesor OEprofesor = new CEprofesor();
        CNprofesor ONprofesor = new CNprofesor();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void guardar_Click(object sender, EventArgs e)
        {
            OEprofesor.Id_profesor = Convert.ToString(txtidprofesor1.Text);
            OEprofesor.Nombre = Convert.ToString(txtnombre1.Text);
            OEprofesor.Apellido = Convert.ToString(txtapellido1.Text);
            OEprofesor.Celular = Convert.ToString(txtcelular1.Text);
            OEprofesor.Edad = Convert.ToString(txtedad1.Text);
            OEprofesor.Direccion = Convert.ToString(txtdireccion1.Text);
          //  OEprofesor.Barrio = Convert.ToString(txtbarrio1.Text);
            OEprofesor.Curso = Convert.ToString(txtcurso1.Text);

            if (ONprofesor.guardar_profesor(OEprofesor))
            {
                lblrespuesta1.Text = "guardar profesor";
            }
            else
            {
                lblrespuesta1.Text = "no se pudo guardar profesor";
            }

        }



        protected void eliminar_Click(object sender, EventArgs e)
        {
            OEprofesor.Id_profesor = Convert.ToString(txtidprofesor1.Text);

            if (ONprofesor.Anular_profesor(OEprofesor))
            {
                txtidprofesor1.Text = "";
                txtnombre1.Text = "";
                txtapellido1.Text = "";
                txtcelular1.Text = "";
                txtedad1.Text = "";
                txtdireccion1.Text = "";
               // txtbarrio1.Text = "";
                txtcurso1.Text = "";
                lblrespuesta1.Text = "REGISTRO PROFESOR SE HA ELIMINADO CORRECTAMENTE";
            }
            else
            {

                lblrespuesta1.Text = "NO SE PUDO ELIMINAR EL REGISTRO";
            }
        }
      
        protected void consultar_Click1(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            OEprofesor.Id_profesor = Convert.ToString(txtidprofesor1.Text);

            ds = ONprofesor.Consultar_profesor(OEprofesor);

            if (ds.Tables[0].Rows.Count == 0)
            {
                lblrespuesta1.Text = "VERIFIQUE CODIGO";
            }
            else
            {
                lblrespuesta1.Text = ds.Tables[0].Rows[0]["Id_profesor"].ToString();

                txtnombre1.Text = ds.Tables[0].Rows[0]["Nombre"].ToString();
                txtapellido1.Text = ds.Tables[0].Rows[0]["Apellido"].ToString();
                txtcelular1.Text = ds.Tables[0].Rows[0]["Celular"].ToString();
                txtedad1.Text = ds.Tables[0].Rows[0]["Edad"].ToString();
                txtdireccion1.Text = ds.Tables[0].Rows[0]["Direccion"].ToString();
               // txtbarrio1.Text = ds.Tables[0].Rows[0]["Barrio"].ToString();
                txtcurso1.Text = ds.Tables[0].Rows[0]["Curso"].ToString();
                
            }
        }

        protected void btnlimpiar1_Click1(object sender, EventArgs e)
        {
            txtidprofesor1.Text = "";
            txtnombre1.Text = "";
            txtapellido1.Text = "";
            txtcelular1.Text = "";
            txtedad1.Text = "";
            txtdireccion1.Text = "";
          //  txtbarrio1.Text = "";
            txtcurso1.Text = "";
            lblrespuesta1.Text = "";
        }
    }
}


