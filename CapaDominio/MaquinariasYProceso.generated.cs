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
	public partial class MaquinariasYProceso
	{
		private int idMaquinariasYProcesos;
		public virtual int IdMaquinariasYProcesos
		{
			get
			{
				return this.idMaquinariasYProcesos;
			}
			set
			{
				this.idMaquinariasYProcesos = value;
			}
		}
		
		private bool? disponeDeEquipos;
		public virtual bool? DisponeDeEquipos
		{
			get
			{
				return this.disponeDeEquipos;
			}
			set
			{
				this.disponeDeEquipos = value;
			}
		}
		
		private string equipos;
		public virtual string Equipos
		{
			get
			{
				return this.equipos;
			}
			set
			{
				this.equipos = value;
			}
		}
		
		private string otrosEquipos;
		public virtual string OtrosEquipos
		{
			get
			{
				return this.otrosEquipos;
			}
			set
			{
				this.otrosEquipos = value;
			}
		}
		
		private string falencia;
		public virtual string Falencia
		{
			get
			{
				return this.falencia;
			}
			set
			{
				this.falencia = value;
			}
		}
		
		private string otraFalencia;
		public virtual string OtraFalencia
		{
			get
			{
				return this.otraFalencia;
			}
			set
			{
				this.otraFalencia = value;
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