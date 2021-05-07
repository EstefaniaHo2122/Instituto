using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;
using System.Data;
using System.Data.SqlClient;

namespace CapaDato
{
    public class CDalumo
    {
        CConexion oconexion = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool Guardar_alumno(CEalumno oalumno)
        {
            try
            {
                ocmd.CommandType = CommandType.StoredProcedure; //Abrir la conexion donde lo SP
                ocmd.Connection = oconexion.conectar("BDINSTITUTO"); //Se emplea para conectar
                ocmd.CommandText = "Guardar_alumno"; //Procedimiento almacenado
                ocmd.Parameters.Add("@id_alumno", oalumno.Id_alumno);
                ocmd.Parameters.Add("@nombre", oalumno.Nombre);
                ocmd.Parameters.Add("@apellido", oalumno.Apellido);
                ocmd.Parameters.Add("@celular", oalumno.Celular);
                ocmd.Parameters.Add("@edad", oalumno.Edad);
                ocmd.Parameters.Add("@direccion", oalumno.Direccion);
                ocmd.Parameters.Add("@barrrio", oalumno.Barrrio);
                ocmd.Parameters.Add("@activo", oalumno.Activo);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }

        public bool Anular_alumno(CEalumno oalumno)
        {
            try
            {
                ocmd.CommandType = CommandType.StoredProcedure; //SP
                ocmd.Connection = oconexion.conectar("BDINSTITUTO"); //Abrir BD
                ocmd.CommandText = "Anular_alumno";
                ocmd.Parameters.Add("@id_alumno", oalumno.Id_alumno);
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }

        public DataSet Consultar_alumno(CEalumno oalumno)
        {
            ocmd.CommandType = CommandType.StoredProcedure;//Abrir conexion donde SP
            ocmd.Connection = oconexion.conectar("BDINSTITUTO");//se emplea conectar
            ocmd.CommandText = "Consultar_alumno";//precedimiento almacenado
            ocmd.Parameters.Add("@id_alumno", oalumno.Id_alumno);
            SqlDataAdapter sda = new SqlDataAdapter(ocmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
    }
}
