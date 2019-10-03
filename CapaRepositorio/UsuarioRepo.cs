﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class UsuarioRepo
    {
        public Usuario ObtenerUsuario(String nombreUsuario, String contrasenia)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                return modeloDeDominio.Usuarios.Where(c => c.NombreUsuario == nombreUsuario && c.Contrasenia == contrasenia).FirstOrDefault();

            }
        }
        public void ActualizarUsuario(Usuario usuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(usuario);
                modeloDeDominio.SaveChanges();
            }
        }
        public IEnumerable<Usuario> MostrarUsuarios()
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                IEnumerable<Usuario> result = modeloDeDominio.Usuarios.ToList();
                return result;
            }
        }
        public int GuardarUsuario(Usuario usuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(usuario);
                modeloDeDominio.SaveChanges();
                return usuario.IdUsuario;
            }
        }
        public Usuario ObtenerUsuario(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Usuario usuario = modeloDeDominio.Usuarios.Where(c => c.IdUsuario == id).FirstOrDefault();

                return usuario;
            }
        }
        public Usuario ControlarDuplicadoUsuario(String nombreUsuario)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                return modeloDeDominio.Usuarios.Where(c => c.NombreUsuario == nombreUsuario).FirstOrDefault();

            }
        }
        public void ActualizarUsuarioSoloNombreUsuario(string cosa)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Usuario usuario = modeloDeDominio.Usuarios.FirstOrDefault();

                usuario.NombreUsuario = cosa;

                modeloDeDominio.SaveChanges();
            }
        }
        public Usuario ObtenerUsuarioSegunCorreoElectronico(String correoElectronico)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                return modeloDeDominio.Usuarios.Where(c => c.CorreoElectronico == correoElectronico).FirstOrDefault();

            }
        }
    }
}