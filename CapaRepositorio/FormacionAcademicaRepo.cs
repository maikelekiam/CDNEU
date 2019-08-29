using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class FormacionAcademicaRepo
    {
        public void ActualizarFormacionAcademica(FormacionAcademica formacionAcademica)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(formacionAcademica);
                modeloDeDominio.SaveChanges();
            }
        }

        public FormacionAcademica ObtenerFormacionAcademica(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FormacionAcademica formacionAcademica = modeloDeDominio.FormacionAcademicas.Where(c => c.IdUsuario == id).FirstOrDefault();

                return formacionAcademica;
            }
        }
        public int GuardarFormacionAcademica(FormacionAcademica formacionAcademica)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(formacionAcademica);
                modeloDeDominio.SaveChanges();
                return formacionAcademica.IdUsuario;
            }
        }

        public int ObtenerFormacionAcademicaSegunIdUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                FormacionAcademica formacionAcademica = modeloDeDominio.FormacionAcademicas.Where(c => c.IdUsuario == id).FirstOrDefault();

                return formacionAcademica.IdFormacionAcademica;
            }
        }
    }
}
