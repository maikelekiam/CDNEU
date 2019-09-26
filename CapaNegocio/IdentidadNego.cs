using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;
namespace CapaNegocio
{
    public class IdentidadNego
    {
        IdentidadRepo identidadRepo = new IdentidadRepo();

        public void ActualizarIdentidad(Identidad identidad)
        {
            identidadRepo.ActualizarIdentidad(identidad);
        }

        public Identidad ObtenerIdentidad(int id)
        {
            return identidadRepo.ObtenerIdentidad(id);
        }
        public void GuardarIdentidad(Identidad identidad)
        {
            identidadRepo.GuardarIdentidad(identidad);
        }
        public int ObtenerIdentidadSegunIdUsuario(int id)
        {
            return identidadRepo.ObtenerIdentidadSegunIdUsuario(id);
        }
    }
}
