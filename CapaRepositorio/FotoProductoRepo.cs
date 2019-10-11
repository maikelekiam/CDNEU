using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class FotoProductoRepo
    {
        public int GuardarFotoProducto(FotoProducto fotoProducto)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(fotoProducto);
                modeloDeDominio.SaveChanges();
                return fotoProducto.IdFotoProducto;
            }
        }
        public void ActualizarFotoProducto(FotoProducto fotoProducto)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(fotoProducto);
                modeloDeDominio.SaveChanges();
            }
        }
        public FotoProducto ObtenerFotoProducto(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FotoProducto fotoProducto = modeloDeDominio.FotoProductos.Where(c => c.IdUsuario == id).FirstOrDefault();

                return fotoProducto;
            }
        }
        public int ObtenerIdFotoProducto(int idUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FotoProducto fotoProducto = modeloDeDominio.FotoProductos.Where(c => c.IdUsuario == idUsuario).FirstOrDefault();

                return fotoProducto.IdFotoProducto;
            }
        }

        public IEnumerable<FotoProducto> MostrarFotoProductos(int idUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                IEnumerable<FotoProducto> result = modeloDeDominio.FotoProductos.Where(c => c.IdUsuario == idUsuario).ToList();
                return result;
            }
        }

    }
}
