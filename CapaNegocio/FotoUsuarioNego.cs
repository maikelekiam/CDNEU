using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class FotoUsuarioNego
    {
        FotoUsuarioRepo fotoUsuarioRepo = new FotoUsuarioRepo();

        public void ActualizarFotoUsuario(FotoUsuario fotoUsuario)
        {
            fotoUsuarioRepo.ActualizarFotoUsuario(fotoUsuario);
        }
        public int GuardarFotoUsuario(FotoUsuario fotoUsuario)
        {
            return fotoUsuarioRepo.GuardarFotoUsuario(fotoUsuario);
        }
        public FotoUsuario ObtenerFotoUsuario(int id)
        {
            return fotoUsuarioRepo.ObtenerFotoUsuario(id);
        }
        public int ObtenerIdFotoUsuario(int idUsuario)
        {
            return fotoUsuarioRepo.ObtenerIdFotoUsuario(idUsuario);
        }
        public IEnumerable<FotoUsuario> MostrarFotoUsuarios()
        {
            return fotoUsuarioRepo.MostrarFotoUsuarios();
        }
    }


}
