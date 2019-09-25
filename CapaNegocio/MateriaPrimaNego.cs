using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class MateriaPrimaNego
    {
        MateriaPrimaRepo materiaPrimaRepo = new MateriaPrimaRepo();

        public void ActualizarMateriaPrima(MateriaPrima materiaPrima)
        {
            materiaPrimaRepo.ActualizarMateriaPrima(materiaPrima);
        }

        public MateriaPrima ObtenerMateriaPrima(int id)
        {
            return materiaPrimaRepo.ObtenerMateriaPrima(id);
        }
        public void GuardarMateriaPrima(MateriaPrima materiaPrima)
        {
            materiaPrimaRepo.GuardarMateriaPrima(materiaPrima);
        }
        public int ObtenerMateriaPrimaSegunIdUsuario(int id)
        {
            return materiaPrimaRepo.ObtenerMateriaPrimaSegunIdUsuario(id);
        }
    }
}
