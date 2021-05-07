using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaEntidad;
using CapaDato;

namespace CapaNegocio
{
    public class CNalumno
    {

        CDalumo odacalumno = new CDalumo(); //creamos un objeto para poner a pruebla la clase cdcita
            public bool guardar_alumno(CEalumno oenalumno) //funciones que nos van a ayudar de puente para la capaPresentacion
            {
                return odacalumno.Guardar_alumno(oenalumno); //retornar el objeto y se trae todos los procedimientos de capadatos en cita
            }
            public bool Anular_alumno(CEalumno oenalumno)
            {
                return odacalumno.Anular_alumno(oenalumno);
            }
            public DataSet Consultar_alumno(CEalumno oenalumno)
            {
                return odacalumno.Consultar_alumno(oenalumno);
            }
        

    }
}
