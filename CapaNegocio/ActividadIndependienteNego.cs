using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaRepositorio;
using CapaDominio;

namespace CapaNegocio
{
    public class ActividadIndependienteNego
    {
        ActividadIndependienteRepo actividadIndependienteRepo = new ActividadIndependienteRepo();

        public void ActualizarActividadIndependiente(ActividadIndependiente actividadIndependiente)
        {
            actividadIndependienteRepo.ActualizarActividadIndependiente(actividadIndependiente);
        }

        public ActividadIndependiente ObtenerActividadIndependiente(int id)
        {
            return actividadIndependienteRepo.ObtenerActividadIndependiente(id);
        }
        public void GuardarActividadIndependiente(ActividadIndependiente actividadIndependiente)
        {
            actividadIndependienteRepo.GuardarActividadIndependiente(actividadIndependiente);
        }
        public int ObtenerActividadIndependienteSegunIdUsuario(int id)
        {
            return actividadIndependienteRepo.ObtenerActividadIndependienteSegunIdUsuario(id);
        }
    }
}
