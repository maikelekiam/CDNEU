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
	public partial class FotoProducto
	{
		private int idFotoProducto;
		public virtual int IdFotoProducto
		{
			get
			{
				return this.idFotoProducto;
			}
			set
			{
				this.idFotoProducto = value;
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
		
		private string nombreFotoProducto;
		public virtual string NombreFotoProducto
		{
			get
			{
				return this.nombreFotoProducto;
			}
			set
			{
				this.nombreFotoProducto = value;
			}
		}
		
		private string descripcionFotoProducto;
		public virtual string DescripcionFotoProducto
		{
			get
			{
				return this.descripcionFotoProducto;
			}
			set
			{
				this.descripcionFotoProducto = value;
			}
		}
		
		private string extensionFotoProducto;
		public virtual string ExtensionFotoProducto
		{
			get
			{
				return this.extensionFotoProducto;
			}
			set
			{
				this.extensionFotoProducto = value;
			}
		}
		
		private string tipoContenidoFotoProducto;
		public virtual string TipoContenidoFotoProducto
		{
			get
			{
				return this.tipoContenidoFotoProducto;
			}
			set
			{
				this.tipoContenidoFotoProducto = value;
			}
		}
		
		private long? tamanioFotoProducto;
		public virtual long? TamanioFotoProducto
		{
			get
			{
				return this.tamanioFotoProducto;
			}
			set
			{
				this.tamanioFotoProducto = value;
			}
		}
		
		private string rutaFotoProducto;
		public virtual string RutaFotoProducto
		{
			get
			{
				return this.rutaFotoProducto;
			}
			set
			{
				this.rutaFotoProducto = value;
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