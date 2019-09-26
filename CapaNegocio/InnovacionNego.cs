using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;
namespace CapaNegocio
{
    public class InnovacionNego
    {
        InnovacionRepo innovacionRepo = new InnovacionRepo();

        public void ActualizarInnovacion(Innovacion innovacion)
        {
            innovacionRepo.ActualizarInnovacion(innovacion);
        }

        public Innovacion ObtenerInnovacion(int id)
        {
            return innovacionRepo.ObtenerInnovacion(id);
        }
        public void GuardarInnovacion(Innovacion innovacion)
        {
            innovacionRepo.GuardarInnovacion(innovacion);
        }
        public int ObtenerInnovacionSegunIdUsuario(int id)
        {
            return innovacionRepo.ObtenerInnovacionSegunIdUsuario(id);
        }
    }
}
