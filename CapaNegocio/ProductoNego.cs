using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class ProductoNego
    {
        ProductoRepo productoRepo = new ProductoRepo();

        public void ActualizarProducto(Producto producto)
        {
            productoRepo.ActualizarProducto(producto);
        }

        public Producto ObtenerProducto(int id)
        {
            return productoRepo.ObtenerProducto(id);
        }
        public void GuardarProducto(Producto producto)
        {
            productoRepo.GuardarProducto(producto);
        }
        public int ObtenerProductoSegunIdUsuario(int id)
        {
            return productoRepo.ObtenerProductoSegunIdUsuario(id);
        }
    }
}
