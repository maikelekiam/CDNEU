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
	public partial class Innovacion
	{
		private int idInnovacion;
		public virtual int IdInnovacion
		{
			get
			{
				return this.idInnovacion;
			}
			set
			{
				this.idInnovacion = value;
			}
		}
		
		private string incorporaInnovacion;
		public virtual string IncorporaInnovacion
		{
			get
			{
				return this.incorporaInnovacion;
			}
			set
			{
				this.incorporaInnovacion = value;
			}
		}
		
		private string otraIncorporaInnovacion;
		public virtual string OtraIncorporaInnovacion
		{
			get
			{
				return this.otraIncorporaInnovacion;
			}
			set
			{
				this.otraIncorporaInnovacion = value;
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
		
		private string otraDificultad;
		public virtual string OtraDificultad
		{
			get
			{
				return this.otraDificultad;
			}
			set
			{
				this.otraDificultad = value;
			}
		}
		
		private string comoTomaronInnovacion;
		public virtual string ComoTomaronInnovacion
		{
			get
			{
				return this.comoTomaronInnovacion;
			}
			set
			{
				this.comoTomaronInnovacion = value;
			}
		}
		
		private string contarExperiencia;
		public virtual string ContarExperiencia
		{
			get
			{
				return this.contarExperiencia;
			}
			set
			{
				this.contarExperiencia = value;
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
