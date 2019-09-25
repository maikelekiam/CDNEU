using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class MaquinariaRepo
    {
        public void ActualizarMaquinaria(Maquinarium maquinarium)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(maquinarium);
                modeloDeDominio.SaveChanges();
            }
        }

        public Maquinarium ObtenerMaquinaria(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Maquinarium maquinarium = modeloDeDominio.Maquinaria.Where(c => c.IdUsuario == id).FirstOrDefault();

                return maquinarium;
            }
        }
        public int GuardarMaquinaria(Maquinarium maquinarium)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(maquinarium);
                modeloDeDominio.SaveChanges();
                return maquinarium.IdUsuario;
            }
        }

        public int ObtenerMaquinariaSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Maquinarium maquinarium = modeloDeDominio.Maquinaria.Where(c => c.IdUsuario == id).FirstOrDefault();

                return maquinarium.IdMaquinaria;
            }
        }
    }
}
