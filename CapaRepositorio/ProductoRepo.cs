using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class ProductoRepo
    {
        public void ActualizarProducto(Producto producto)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(producto);
                modeloDeDominio.SaveChanges();
            }
        }

        public Producto ObtenerProducto(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Producto producto = modeloDeDominio.Productos.Where(c => c.IdUsuario == id).FirstOrDefault();

                return producto;
            }
        }
        public int GuardarProducto(Producto producto)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(producto);
                modeloDeDominio.SaveChanges();
                return producto.IdUsuario;
            }
        }

        public int ObtenerProductoSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Producto producto = modeloDeDominio.Productos.Where(c => c.IdUsuario == id).FirstOrDefault();

                return producto.IdProducto;
            }
        }
    }
}
