using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class ActividadIndependienteRepo
    {
        public void ActualizarActividadIndependiente(ActividadIndependiente actividadIndependiente)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(actividadIndependiente);
                modeloDeDominio.SaveChanges();
            }
        }

        public ActividadIndependiente ObtenerActividadIndependiente(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                ActividadIndependiente actividadIndependiente = modeloDeDominio.ActividadIndependientes.Where(c => c.IdUsuario == id).FirstOrDefault();

                return actividadIndependiente;
            }
        }
        public int GuardarActividadIndependiente(ActividadIndependiente actividadIndependiente)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(actividadIndependiente);
                modeloDeDominio.SaveChanges();
                return actividadIndependiente.IdUsuario;
            }
        }

        public int ObtenerActividadIndependienteSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                ActividadIndependiente actividadIndependiente = modeloDeDominio.ActividadIndependientes.Where(c => c.IdUsuario == id).FirstOrDefault();

                return actividadIndependiente.IdActividadIndependiente;
            }
        }
    }
}
