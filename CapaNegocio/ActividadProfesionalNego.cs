using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class ActividadProfesionalNego
    {
        ActividadProfesionalRepo actividadProfesionalRepo = new ActividadProfesionalRepo();

        public void ActualizarActividadProfesional(ActividadProfesional actividadProfesional)
        {
            actividadProfesionalRepo.ActualizarActividadProfesional(actividadProfesional);
        }

        public ActividadProfesional ObtenerActividadProfesional(int id)
        {
            return actividadProfesionalRepo.ObtenerActividadProfesional(id);
        }
        public void GuardarActividadProfesional(ActividadProfesional actividadProfesional)
        {
            actividadProfesionalRepo.GuardarActividadProfesional(actividadProfesional);
        }
        public int ObtenerActividadProfesionalSegunIdUsuario(int id)
        {
            return actividadProfesionalRepo.ObtenerActividadProfesionalSegunIdUsuario(id);
        }




    }

}
