using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class ActividadProfesionalRepo
    {
        public void ActualizarActividadProfesional(ActividadProfesional actividadProfesional)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(actividadProfesional);
                modeloDeDominio.SaveChanges();
            }
        }

        public ActividadProfesional ObtenerActividadProfesional(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                ActividadProfesional actividadProfesional = modeloDeDominio.ActividadProfesionals.Where(c => c.IdUsuario == id).FirstOrDefault();

                return actividadProfesional;
            }
        }
        public int GuardarActividadProfesional(ActividadProfesional actividadProfesional)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(actividadProfesional);
                modeloDeDominio.SaveChanges();
                return actividadProfesional.IdUsuario;
            }
        }

        public int ObtenerActividadProfesionalSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                ActividadProfesional actividadProfesional = modeloDeDominio.ActividadProfesionals.Where(c => c.IdUsuario == id).FirstOrDefault();

                return actividadProfesional.IdActividadProfesional;
            }
        }
    }
}
