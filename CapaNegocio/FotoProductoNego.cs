﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;
using CapaRepositorio;

namespace CapaNegocio
{
    public class FotoProductoNego
    {
        FotoProductoRepo fotoProductoRepo = new FotoProductoRepo();

        public void ActualizarFotoProducto(FotoProducto fotoProducto)
        {
            fotoProductoRepo.ActualizarFotoProducto(fotoProducto);
        }
        public int GuardarFotoProducto(FotoProducto fotoProducto)
        {
            return fotoProductoRepo.GuardarFotoProducto(fotoProducto);
        }
        public FotoProducto ObtenerFotoProducto(int id)
        {
            return fotoProductoRepo.ObtenerFotoProducto(id);
        }
        public int ObtenerIdFotoProducto(int idProducto)
        {
            return fotoProductoRepo.ObtenerIdFotoProducto(idProducto);
        }
    }
}
