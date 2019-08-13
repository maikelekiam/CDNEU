﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by the ContextGenerator.ttinclude code generation file.
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
	public partial class ModeloDeDominio : OpenAccessContext, IModeloDeDominioUnitOfWork
	{
		private static string connectionStringName = @"Conn";
			
		private static BackendConfiguration backend = GetBackendConfiguration();
				
		private static MetadataSource metadataSource = XmlMetadataSource.FromAssemblyResource("EntitiesModel.rlinq");
		
		public ModeloDeDominio()
			:base(connectionStringName, backend, metadataSource)
		{ }
		
		public ModeloDeDominio(string connection)
			:base(connection, backend, metadataSource)
		{ }
		
		public ModeloDeDominio(BackendConfiguration backendConfiguration)
			:base(connectionStringName, backendConfiguration, metadataSource)
		{ }
			
		public ModeloDeDominio(string connection, MetadataSource metadataSource)
			:base(connection, backend, metadataSource)
		{ }
		
		public ModeloDeDominio(string connection, BackendConfiguration backendConfiguration, MetadataSource metadataSource)
			:base(connection, backendConfiguration, metadataSource)
		{ }
			
		public IQueryable<Usuario> Usuarios 
		{
			get
			{
				return this.GetAll<Usuario>();
			}
		}
		
		public IQueryable<Vinculacion> Vinculacions 
		{
			get
			{
				return this.GetAll<Vinculacion>();
			}
		}
		
		public IQueryable<ProduccionDeBiene> ProduccionDeBienes 
		{
			get
			{
				return this.GetAll<ProduccionDeBiene>();
			}
		}
		
		public IQueryable<MateriasPrima> MateriasPrimas 
		{
			get
			{
				return this.GetAll<MateriasPrima>();
			}
		}
		
		public IQueryable<MaquinariasYProceso> MaquinariasYProcesos 
		{
			get
			{
				return this.GetAll<MaquinariasYProceso>();
			}
		}
		
		public IQueryable<Innovacion> Innovacions 
		{
			get
			{
				return this.GetAll<Innovacion>();
			}
		}
		
		public IQueryable<IdentidadDisenio> IdentidadDisenios 
		{
			get
			{
				return this.GetAll<IdentidadDisenio>();
			}
		}
		
		public IQueryable<FormacionAcademica> FormacionAcademicas 
		{
			get
			{
				return this.GetAll<FormacionAcademica>();
			}
		}
		
		public IQueryable<ActividadProfesional> ActividadProfesionals 
		{
			get
			{
				return this.GetAll<ActividadProfesional>();
			}
		}
		
		public IQueryable<ActividadIndependiente> ActividadIndependientes 
		{
			get
			{
				return this.GetAll<ActividadIndependiente>();
			}
		}
		
		public static BackendConfiguration GetBackendConfiguration()
		{
			BackendConfiguration backend = new BackendConfiguration();
			backend.Backend = "MsSql";
			backend.ProviderName = "System.Data.SqlClient";
		
			CustomizeBackendConfiguration(ref backend);
		
			return backend;
		}
		
		/// <summary>
		/// Allows you to customize the BackendConfiguration of ModeloDeDominio.
		/// </summary>
		/// <param name="config">The BackendConfiguration of ModeloDeDominio.</param>
		static partial void CustomizeBackendConfiguration(ref BackendConfiguration config);
		
	}
	
	public interface IModeloDeDominioUnitOfWork : IUnitOfWork
	{
		IQueryable<Usuario> Usuarios
		{
			get;
		}
		IQueryable<Vinculacion> Vinculacions
		{
			get;
		}
		IQueryable<ProduccionDeBiene> ProduccionDeBienes
		{
			get;
		}
		IQueryable<MateriasPrima> MateriasPrimas
		{
			get;
		}
		IQueryable<MaquinariasYProceso> MaquinariasYProcesos
		{
			get;
		}
		IQueryable<Innovacion> Innovacions
		{
			get;
		}
		IQueryable<IdentidadDisenio> IdentidadDisenios
		{
			get;
		}
		IQueryable<FormacionAcademica> FormacionAcademicas
		{
			get;
		}
		IQueryable<ActividadProfesional> ActividadProfesionals
		{
			get;
		}
		IQueryable<ActividadIndependiente> ActividadIndependientes
		{
			get;
		}
	}
}
#pragma warning restore 1591
