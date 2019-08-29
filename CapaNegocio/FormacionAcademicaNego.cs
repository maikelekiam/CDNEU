using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class FormacionAcademicaNego
    {
        FormacionAcademicaRepo formacionAcademicaRepo = new FormacionAcademicaRepo();

        public void ActualizarFormacionAcademica(FormacionAcademica formacionAcademica)
        {
            formacionAcademicaRepo.ActualizarFormacionAcademica(formacionAcademica);
        }

        public FormacionAcademica ObtenerFormacionAcademica(int id)
        {
            return formacionAcademicaRepo.ObtenerFormacionAcademica(id);
        }
        public void GuardarFormacionAcademica(FormacionAcademica formacionAcademica)
        {
            formacionAcademicaRepo.GuardarFormacionAcademica(formacionAcademica);
        }
        public int ObtenerFormacionAcademicaSegunIdUsuario(int id)
        {
            return formacionAcademicaRepo.ObtenerFormacionAcademicaSegunIdUsuario(id);
        }
    }
}
