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
	public partial class ActividadIndependiente
	{
		private int idActividadIndependiente;
		public virtual int IdActividadIndependiente
		{
			get
			{
				return this.idActividadIndependiente;
			}
			set
			{
				this.idActividadIndependiente = value;
			}
		}
		
		private string sustentoDeVida;
		public virtual string SustentoDeVida
		{
			get
			{
				return this.sustentoDeVida;
			}
			set
			{
				this.sustentoDeVida = value;
			}
		}
		
		private string tiempoActividadFuncionamiento;
		public virtual string TiempoActividadFuncionamiento
		{
			get
			{
				return this.tiempoActividadFuncionamiento;
			}
			set
			{
				this.tiempoActividadFuncionamiento = value;
			}
		}
		
		private string situacionTributaria;
		public virtual string SituacionTributaria
		{
			get
			{
				return this.situacionTributaria;
			}
			set
			{
				this.situacionTributaria = value;
			}
		}
		
		private string estaRegistrado;
		public virtual string EstaRegistrado
		{
			get
			{
				return this.estaRegistrado;
			}
			set
			{
				this.estaRegistrado = value;
			}
		}
		
		private bool? tieneEmpleadosACargo;
		public virtual bool? TieneEmpleadosACargo
		{
			get
			{
				return this.tieneEmpleadosACargo;
			}
			set
			{
				this.tieneEmpleadosACargo = value;
			}
		}
		
		private int? cantidadEmpleadosACargo;
		public virtual int? CantidadEmpleadosACargo
		{
			get
			{
				return this.cantidadEmpleadosACargo;
			}
			set
			{
				this.cantidadEmpleadosACargo = value;
			}
		}
		
		private string comoComercializa;
		public virtual string ComoComercializa
		{
			get
			{
				return this.comoComercializa;
			}
			set
			{
				this.comoComercializa = value;
			}
		}
		
		private string nombreEspacio;
		public virtual string NombreEspacio
		{
			get
			{
				return this.nombreEspacio;
			}
			set
			{
				this.nombreEspacio = value;
			}
		}
		
		private string linkEspacio;
		public virtual string LinkEspacio
		{
			get
			{
				return this.linkEspacio;
			}
			set
			{
				this.linkEspacio = value;
			}
		}
		
		private string ubicacionEspacio;
		public virtual string UbicacionEspacio
		{
			get
			{
				return this.ubicacionEspacio;
			}
			set
			{
				this.ubicacionEspacio = value;
			}
		}
		
		private string comoFinanciaActividadProfesional;
		public virtual string ComoFinanciaActividadProfesional
		{
			get
			{
				return this.comoFinanciaActividadProfesional;
			}
			set
			{
				this.comoFinanciaActividadProfesional = value;
			}
		}
		
		private bool? realizaVentasServicios;
		public virtual bool? RealizaVentasServicios
		{
			get
			{
				return this.realizaVentasServicios;
			}
			set
			{
				this.realizaVentasServicios = value;
			}
		}
		
		private string cuales;
		public virtual string Cuales
		{
			get
			{
				return this.cuales;
			}
			set
			{
				this.cuales = value;
			}
		}
		
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
		
		private Usuario usuario;
		public virtual Usuario Usuario
		{
			get
			{
				return this.usuario;
			}
			set
			{
				this.usuario = value;
			}
		}
		
	}
}
#pragma warning restore 1591