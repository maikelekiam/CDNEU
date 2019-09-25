using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class MateriaPrimaRepo
    {
        public void ActualizarMateriaPrima(MateriaPrima materiaPrima)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(materiaPrima);
                modeloDeDominio.SaveChanges();
            }
        }

        public MateriaPrima ObtenerMateriaPrima(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                MateriaPrima materiaPrima = modeloDeDominio.MateriaPrimas.Where(c => c.IdUsuario == id).FirstOrDefault();

                return materiaPrima;
            }
        }
        public int GuardarMateriaPrima(MateriaPrima materiaPrima)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(materiaPrima);
                modeloDeDominio.SaveChanges();
                return materiaPrima.IdUsuario;
            }
        }

        public int ObtenerMateriaPrimaSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                MateriaPrima materiaPrima = modeloDeDominio.MateriaPrimas.Where(c => c.IdUsuario == id).FirstOrDefault();

                return materiaPrima.IdMateriaPrima;
            }
        }
    }
}
