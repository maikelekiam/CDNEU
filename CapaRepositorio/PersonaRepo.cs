﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDominio;

namespace CapaRepositorio
{
    public class PersonaRepo
    {
        public IEnumerable<Persona> MostrarPersonas()
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                IEnumerable<Persona> result = modeloDeDominio.Personas.ToList();
                return modeloDeDominio.CreateDetachedCopy(result);
            }
        }
        public int GuardarPersona(Persona persona)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.Add(persona);
                modeloDeDominio.SaveChanges();
                return persona.IdPersona;
            }
        }
        public string TraerPersona(int id)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                Persona result = modeloDeDominio.Personas.Where(c => c.IdPersona == id).FirstOrDefault();

                modeloDeDominio.CreateDetachedCopy(result);

                return result.Apellido + "," + result.Nombre;
            }
        }
        // METODO LISTAR PERSONAS
        public List<Persona> MostrarPersonasDt()
        {
            List<Persona> datosLista;

            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                IEnumerable<Persona> listaDePersonas = modeloDeDominio.Personas.ToList();
                datosLista = (List<Persona>)listaDePersonas;
            }
            return datosLista;
        }
        public void ActualizarPersona(Persona persona)
        {
            using (ModeloDeDominio modeloDeDominio = new ModeloDeDominio())
            {
                modeloDeDominio.AttachCopy(persona);
                modeloDeDominio.SaveChanges();
            }
        }
    }
}
