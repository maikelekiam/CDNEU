using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;
namespace CapaNegocio
{
    public class MaquinariaNego
    {
        MaquinariaRepo maquinariaRepo = new MaquinariaRepo();

        public void ActualizarMaquinaria(Maquinarium maquinarium)
        {
            maquinariaRepo.ActualizarMaquinaria(maquinarium);
        }

        public Maquinarium ObtenerMaquinaria(int id)
        {
            return maquinariaRepo.ObtenerMaquinaria(id);
        }
        public void GuardarMaquinaria(Maquinarium maquinarium)
        {
            maquinariaRepo.GuardarMaquinaria(maquinarium);
        }
        public int ObtenerMaquinariaSegunIdUsuario(int id)
        {
            return maquinariaRepo.ObtenerMaquinariaSegunIdUsuario(id);
        }
    }
}
