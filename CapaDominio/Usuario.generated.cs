#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by the ClassGenerator.ttinclude code generation file.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Data.Common;
using System.Collections.Generic;
using Telerik.OpenAccess;
using Telerik.OpenAccess.Metadata;
using Telerik.OpenAccess.Data.Common;
using Telerik.OpenAccess.Metadata.Fluent;
using Telerik.OpenAccess.Metadata.Fluent.Advanced;
using CapaDominio;

namespace CapaDominio	
{
	public partial class Usuario
	{
		private int idUsuario;
		public virtual int IdUsuario
		{
			get
			{
				return this.idUsuario;
			}
			set
			{
				this.idUsuario = value;
			}
		}
		
		private string nombreUsuario;
		public virtual string NombreUsuario
		{
			get
			{
				return this.nombreUsuario;
			}
			set
			{
				this.nombreUsuario = value;
			}
		}
		
		private string contrasenia;
		public virtual string Contrasenia
		{
			get
			{
				return this.contrasenia;
			}
			set
			{
				this.contrasenia = value;
			}
		}
		
		private int grupo;
		public virtual int Grupo
		{
			get
			{
				return this.grupo;
			}
			set
			{
				this.grupo = value;
			}
		}
		
		private string correoElectronico;
		public virtual string CorreoElectronico
		{
			get
			{
				return this.correoElectronico;
			}
			set
			{
				this.correoElectronico = value;
			}
		}
		
		private bool activo;
		public virtual bool Activo
		{
			get
			{
				return this.activo;
			}
			set
			{
				this.activo = value;
			}
		}
		
		private string nombre;
		public virtual string Nombre
		{
			get
			{
				return this.nombre;
			}
			set
			{
				this.nombre = value;
			}
		}
		
		private string apellido;
		public virtual string Apellido
		{
			get
			{
				return this.apellido;
			}
			set
			{
				this.apellido = value;
			}
		}
		
		private string telefono;
		public virtual string Telefono
		{
			get
			{
				return this.telefono;
			}
			set
			{
				this.telefono = value;
			}
		}
		
		private int? edad;
		public virtual int? Edad
		{
			get
			{
				return this.edad;
			}
			set
			{
				this.edad = value;
			}
		}
		
		private string domicilio;
		public virtual string Domicilio
		{
			get
			{
				return this.domicilio;
			}
			set
			{
				this.domicilio = value;
			}
		}
		
		private IList<Vinculacion> vinculacions = new List<Vinculacion>();
		public virtual IList<Vinculacion> Vinculacions
		{
			get
			{
				return this.vinculacions;
			}
		}
		
		private IList<ProduccionDeBiene> produccionDeBienes = new List<ProduccionDeBiene>();
		public virtual IList<ProduccionDeBiene> ProduccionDeBienes
		{
			get
			{
				return this.produccionDeBienes;
			}
		}
		
		private IList<MateriasPrima> materiasPrimas = new List<MateriasPrima>();
		public virtual IList<MateriasPrima> MateriasPrimas
		{
			get
			{
				return this.materiasPrimas;
			}
		}
		
		private IList<MaquinariasYProceso> maquinariasYProcesos = new List<MaquinariasYProceso>();
		public virtual IList<MaquinariasYProceso> MaquinariasYProcesos
		{
			get
			{
				return this.maquinariasYProcesos;
			}
		}
		
		private IList<Innovacion> innovacions = new List<Innovacion>();
		public virtual IList<Innovacion> Innovacions
		{
			get
			{
				return this.innovacions;
			}
		}
		
		private IList<IdentidadDisenio> identidadDisenios = new List<IdentidadDisenio>();
		public virtual IList<IdentidadDisenio> IdentidadDisenios
		{
			get
			{
				return this.identidadDisenios;
			}
		}
		
		private IList<FormacionAcademica> formacionAcademicas = new List<FormacionAcademica>();
		public virtual IList<FormacionAcademica> FormacionAcademicas
		{
			get
			{
				return this.formacionAcademicas;
			}
		}
		
		private IList<ActividadProfesional> actividadProfesionals = new List<ActividadProfesional>();
		public virtual IList<ActividadProfesional> ActividadProfesionals
		{
			get
			{
				return this.actividadProfesionals;
			}
		}
		
		private IList<ActividadIndependiente> actividadIndependientes = new List<ActividadIndependiente>();
		public virtual IList<ActividadIndependiente> ActividadIndependientes
		{
			get
			{
				return this.actividadIndependientes;
			}
		}
		
	}
}
#pragma warning restore 1591
