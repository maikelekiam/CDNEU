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
	public partial class IdentidadDisenio
	{
		private int idIdentidadDisenio;
		public virtual int IdIdentidadDisenio
		{
			get
			{
				return this.idIdentidadDisenio;
			}
			set
			{
				this.idIdentidadDisenio = value;
			}
		}
		
		private string atributos;
		public virtual string Atributos
		{
			get
			{
				return this.atributos;
			}
			set
			{
				this.atributos = value;
			}
		}
		
		private string rasgos;
		public virtual string Rasgos
		{
			get
			{
				return this.rasgos;
			}
			set
			{
				this.rasgos = value;
			}
		}
		
		private string aspectoRelevante;
		public virtual string AspectoRelevante
		{
			get
			{
				return this.aspectoRelevante;
			}
			set
			{
				this.aspectoRelevante = value;
			}
		}
		
		private string temasParaCapacitarse;
		public virtual string TemasParaCapacitarse
		{
			get
			{
				return this.temasParaCapacitarse;
			}
			set
			{
				this.temasParaCapacitarse = value;
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
