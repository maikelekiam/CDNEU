using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class VinculacionRepo
    {
        public void ActualizarVinculacion(Vinculacion vinculacion)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(vinculacion);
                modeloDeDominio.SaveChanges();
            }
        }

        public Vinculacion ObtenerVinculacion(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Vinculacion vinculacion = modeloDeDominio.Vinculacions.Where(c => c.IdUsuario == id).FirstOrDefault();

                return vinculacion;
            }
        }
        public int GuardarVinculacion(Vinculacion vinculacion)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(vinculacion);
                modeloDeDominio.SaveChanges();
                return vinculacion.IdUsuario;
            }
        }

        public int ObtenerVinculacionSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Vinculacion vinculacion = modeloDeDominio.Vinculacions.Where(c => c.IdUsuario == id).FirstOrDefault();

                return vinculacion.IdVinculacion;
            }
        }
    }
}
