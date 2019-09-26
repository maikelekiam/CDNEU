using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;
namespace CapaNegocio
{
    public class VinculacionNego
    {
        VinculacionRepo vinculacionRepo = new VinculacionRepo();

        public void ActualizarVinculacion(Vinculacion vinculacion)
        {
            vinculacionRepo.ActualizarVinculacion(vinculacion);
        }

        public Vinculacion ObtenerVinculacion(int id)
        {
            return vinculacionRepo.ObtenerVinculacion(id);
        }
        public void GuardarVinculacion(Vinculacion vinculacion)
        {
            vinculacionRepo.GuardarVinculacion(vinculacion);
        }
        public int ObtenerVinculacionSegunIdUsuario(int id)
        {
            return vinculacionRepo.ObtenerVinculacionSegunIdUsuario(id);
        }
    }
}
