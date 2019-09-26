using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class InnovacionRepo
    {
        public void ActualizarInnovacion(Innovacion innovacion)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(innovacion);
                modeloDeDominio.SaveChanges();
            }
        }

        public Innovacion ObtenerInnovacion(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Innovacion innovacion = modeloDeDominio.Innovacions.Where(c => c.IdUsuario == id).FirstOrDefault();

                return innovacion;
            }
        }
        public int GuardarInnovacion(Innovacion innovacion)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(innovacion);
                modeloDeDominio.SaveChanges();
                return innovacion.IdUsuario;
            }
        }

        public int ObtenerInnovacionSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Innovacion innovacion = modeloDeDominio.Innovacions.Where(c => c.IdUsuario == id).FirstOrDefault();

                return innovacion.IdInnovacion;
            }
        }
    }
}
