using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class RedesSocialesNego
    {
        RedesSocialesRepo redesSocialesRepo = new RedesSocialesRepo();

        public void ActualizarRedesSociales(RedesSociale redesSociale)
        {
            redesSocialesRepo.ActualizarRedesSociales(redesSociale);
        }

        public RedesSociale ObtenerRedesSociale(int id)
        {
            return redesSocialesRepo.ObtenerRedesSociale(id);
        }
        public void GuardarRedesSociales(RedesSociale redesSociale)
        {
            redesSocialesRepo.GuardarRedesSociales(redesSociale);
        }
        public int ObtenerRedesSocialeSegunIdUsuario(int id)
        {
            return redesSocialesRepo.ObtenerRedesSocialeSegunIdUsuario(id);
        }
    }


}
