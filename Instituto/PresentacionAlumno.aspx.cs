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
    
    public partial class PresentacionAlumno : System.Web.UI.Page
    {
        CEalumno OEalumno = new CEalumno();
        CNalumno ONalumno = new CNalumno();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconsultar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            OEalumno.Id_alumno = Convert.ToString(lblidestudiante.Text);

            ds = ONalumno.Consultar_alumno(OEalumno);

            if (ds.Tables[0].Rows.Count == 0)
            {
                lblrespuesta.Text = "VERIFIQUE SU CODIGO";
            }
            else
            {
                //lblrespuesta.Text = ds.Tables[0].Rows[0]["Cod_cita"].ToString();

                // txtcodcita.Text = ds.Tables[0].Rows[0]["Cod_cita1"].ToString();
                lblnombre.Text = ds.Tables[0].Rows[0]["Nombre"].ToString();
                lblapellido.Text = ds.Tables[0].Rows[0]["Apellido"].ToString();
                lblcelular.Text = ds.Tables[0].Rows[0]["Celular"].ToString();
                lbledad.Text = ds.Tables[0].Rows[0]["Edad"].ToString();
                lbldireccion.Text = ds.Tables[0].Rows[0]["Direccion"].ToString();
                lblbarrio.Text = ds.Tables[0].Rows[0]["Barrrio"].ToString();
                

            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            OEalumno.Id_alumno = Convert.ToString(lblidestudiante.Text);
            OEalumno.Nombre = Convert.ToString(lblnombre.Text);
            OEalumno.Apellido = Convert.ToString(lblapellido.Text);
            OEalumno.Celular = Convert.ToString(lblcelular.Text);
            OEalumno.Edad = Convert.ToString(lbledad.Text);
            OEalumno.Direccion = Convert.ToString(lbldireccion.Text);
            OEalumno.Barrrio = Convert.ToString(lblbarrio.Text);
            

            if (ONalumno.guardar_alumno(OEalumno))
            {
                lblrespuesta.Text = "ALUMNO MATRICULADO CON EXITO";
            }
            else
            {
                lblrespuesta.Text = "NO SE PUDO MATRICULAR";
            }
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            OEalumno.Id_alumno = Convert.ToString(lblidestudiante.Text);

            if (ONalumno.Anular_alumno(OEalumno))
            {
                lblidestudiante.Text = "";
                lblnombre.Text = "";
                lblapellido.Text = "";
                lblcelular.Text = "";
                lbldireccion.Text = "";
                lbledad.Text = "";
                lblbarrio.Text = "";
                lblrespuesta.Text = "CITA SE HA ELIMINADO CORRECTAMENTE";
            }
            else
            {
                lblrespuesta.Text = "NO SE PUDO ELIMINAR LA CITA";
            }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            lblidestudiante.Text = "";
            lblnombre.Text = "";
            lblapellido.Text = "";
            lblcelular.Text = "";
            lbldireccion.Text = "";
            lbledad.Text = "";
            lblbarrio.Text = "";
            lblrespuesta.Text = "";
        }

        protected void lblidestudiante_TextChanged(object sender, EventArgs e)
        {

        }
    }
}