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
	public partial class MateriasPrima
	{
		private int idMateriasPrimas;
		public virtual int IdMateriasPrimas
		{
			get
			{
				return this.idMateriasPrimas;
			}
			set
			{
				this.idMateriasPrimas = value;
			}
		}
		
		private string porcentajeNeuquen;
		public virtual string PorcentajeNeuquen
		{
			get
			{
				return this.porcentajeNeuquen;
			}
			set
			{
				this.porcentajeNeuquen = value;
			}
		}
		
		private string dificultades;
		public virtual string Dificultades
		{
			get
			{
				return this.dificultades;
			}
			set
			{
				this.dificultades = value;
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