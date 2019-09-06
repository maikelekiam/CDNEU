using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class FotoUsuarioRepo
    {
        public int GuardarFotoUsuario(FotoUsuario fotoUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(fotoUsuario);
                modeloDeDominio.SaveChanges();
                return fotoUsuario.IdFotoUsuario;
            }
        }
        public void ActualizarFotoUsuario(FotoUsuario fotoUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(fotoUsuario);
                modeloDeDominio.SaveChanges();
            }
        }
        public FotoUsuario ObtenerFotoUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FotoUsuario fotoUsuario = modeloDeDominio.FotoUsuarios.Where(c => c.IdUsuario == id).FirstOrDefault();

                return fotoUsuario;
            }
        }
        public int ObtenerIdFotoUsuario(int idUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FotoUsuario fotoUsuario = modeloDeDominio.FotoUsuarios.Where(c => c.IdUsuario == idUsuario).FirstOrDefault();

                return fotoUsuario.IdFotoUsuario;
            }
        }

    }
}
