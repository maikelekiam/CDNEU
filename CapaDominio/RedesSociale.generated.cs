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
	public partial class RedesSociale
	{
		private int idRedesSociales;
		public virtual int IdRedesSociales
		{
			get
			{
				return this.idRedesSociales;
			}
			set
			{
				this.idRedesSociales = value;
			}
		}
		
		private string facebook;
		public virtual string Facebook
		{
			get
			{
				return this.facebook;
			}
			set
			{
				this.facebook = value;
			}
		}
		
		private string instagram;
		public virtual string Instagram
		{
			get
			{
				return this.instagram;
			}
			set
			{
				this.instagram = value;
			}
		}
		
		private string twitter;
		public virtual string Twitter
		{
			get
			{
				return this.twitter;
			}
			set
			{
				this.twitter = value;
			}
		}
		
		private string youtube;
		public virtual string Youtube
		{
			get
			{
				return this.youtube;
			}
			set
			{
				this.youtube = value;
			}
		}
		
		private string flicker;
		public virtual string Flicker
		{
			get
			{
				return this.flicker;
			}
			set
			{
				this.flicker = value;
			}
		}
		
		private string mercadoLibre;
		public virtual string MercadoLibre
		{
			get
			{
				return this.mercadoLibre;
			}
			set
			{
				this.mercadoLibre = value;
			}
		}
		
		private string tiendaNube;
		public virtual string TiendaNube
		{
			get
			{
				return this.tiendaNube;
			}
			set
			{
				this.tiendaNube = value;
			}
		}
		
		private string plataformaOtra;
		public virtual string PlataformaOtra
		{
			get
			{
				return this.plataformaOtra;
			}
			set
			{
				this.plataformaOtra = value;
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
