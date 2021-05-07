using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace CapaDato
{
    public class CConexion
    {
        public SqlConnection conectar(string cnx)
        {
            try //desactiva la conexion  automatica de errores
            {
                SqlConnection oconectar = new SqlConnection(ConfigurationSettings.AppSettings[cnx].ToString());
                oconectar.Open();
                return oconectar;

            }
            catch (Exception err)
            {
                throw new Exception(err.Message);
            }
        }
    }
}
