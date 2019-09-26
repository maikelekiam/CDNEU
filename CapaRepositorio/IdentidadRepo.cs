using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class IdentidadRepo
    {
        public void ActualizarIdentidad(Identidad identidad)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(identidad);
                modeloDeDominio.SaveChanges();
            }
        }

        public Identidad ObtenerIdentidad(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Identidad identidad = modeloDeDominio.Identidads.Where(c => c.IdUsuario == id).FirstOrDefault();

                return identidad;
            }
        }
        public int GuardarIdentidad(Identidad identidad)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(identidad);
                modeloDeDominio.SaveChanges();
                return identidad.IdUsuario;
            }
        }

        public int ObtenerIdentidadSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Identidad identidad = modeloDeDominio.Identidads.Where(c => c.IdUsuario == id).FirstOrDefault();

                return identidad.IdIdentidad;
            }
        }
    }
}
