using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;


namespace CapaRepositorio
{
    public class RedesSocialesRepo
    {
        public void ActualizarRedesSociales(RedesSociale redesSociale)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(redesSociale);
                modeloDeDominio.SaveChanges();
            }
        }

        public RedesSociale ObtenerRedesSociale(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                RedesSociale redesSociale = modeloDeDominio.RedesSociales.Where(c => c.IdUsuario == id).FirstOrDefault();

                return redesSociale;
            }
        }
        public int GuardarRedesSociales(RedesSociale redesSociale)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(redesSociale);
                modeloDeDominio.SaveChanges();
                return redesSociale.IdUsuario;
            }
        }

        public int ObtenerRedesSocialeSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                RedesSociale redesSociale = modeloDeDominio.RedesSociales.Where(c => c.IdUsuario == id).FirstOrDefault();

                return redesSociale.IdRedesSociales;
            }
        }


    }
}
