using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidad
{
    public class CEalumno
    {
        private string id_alumno;
        private string nombre;
        private string apellido;
        private string celular;
        private string edad;
        private string direccion;
        private string barrrio;
        private byte activo;

        public string Id_alumno { get => id_alumno; set => id_alumno = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Celular { get => celular; set => celular = value; }
        public string Edad { get => edad; set => edad = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Barrrio { get => barrrio; set => barrrio = value; }
        public byte Activo { get => activo; set => activo = value; }
    }
}
