using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class Login : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        FotoUsuarioNego fotoUsuarioNego = new FotoUsuarioNego();
        RedesSocialesNego redesSocialesNego = new RedesSocialesNego();
        FormacionAcademicaNego formacionAcademicaNego = new FormacionAcademicaNego();
        ActividadProfesionalNego actividadProfesionalNego = new ActividadProfesionalNego();
        ActividadIndependienteNego actividadIndependienteNego = new ActividadIndependienteNego();
        ProductoNego productoNego = new ProductoNego();
        MateriaPrimaNego materiaPrimaNego = new MateriaPrimaNego();
        MaquinariaNego maquinariaNego = new MaquinariaNego();
        IdentidadNego identidadNego = new IdentidadNego();
        InnovacionNego innovacionNego = new InnovacionNego();
        VinculacionNego vinculacionNego = new VinculacionNego();

        public static int idUsuarioTemporal;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = ValidateUserDetail(txtLoginNombreUsuario.Text, txtLoginContrasenia.Text);

            if (usuario != null)
            {
                Session["userlogin"] = txtLoginNombreUsuario.Text;
                Session["usercontrasenia"] = txtLoginContrasenia.Text;
                Session["userid"] = Convert.ToString(usuario.IdUsuario);
                Session["usergrupo"] = Convert.ToString(usuario.Grupo);
                Session["userActivo"] = usuario.Activo;
                Response.Redirect("Default.aspx");

                idUsuarioTemporal = usuario.IdUsuario;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Usuario/Contraseña incorrecta.')", true);
            }
        }

        public Usuario ValidateUserDetail(string username, string password)
        {
            return usuarioNego.ObtenerUsuario(username, password);
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            //Aca hay que guardar los datos de Registro del Usuario NUEVO

            if ((txtRegistroNombreUsuario.Text != "")
                && (txtRegistroContrasenia.Text != "") //Aca tendria que haber otro campo para verificar la contraseña...
                && (txtRegistroNombre.Text != "")
                && (txtRegistroApellido.Text != "")
                && (txtRegistroCorreoElectronico.Text != "")
                )
            {
                GuardarUsuario();
                Response.Redirect("Login.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Complete todos los campos.')", true);
            }
        }

        private void GuardarUsuario()
        {
            Usuario usuario = new Usuario();

            usuario.Grupo = 2;
            usuario.Activo = true;
            usuario.NombreUsuario = txtRegistroNombreUsuario.Text;
            //***ESTE IF DESPUES HABRIA QUE QUITARLO***//
            if (usuario.NombreUsuario == "marcamone") { usuario.Grupo = 1; }
            //***FIN***//
            usuario.Contrasenia = txtRegistroContrasenia.Text;
            usuario.Nombre = txtRegistroNombre.Text;
            usuario.Apellido = txtRegistroApellido.Text;
            usuario.CorreoElectronico = txtRegistroCorreoElectronico.Text;
            usuario.Telefono = "";
            usuario.Edad = "";
            usuario.Domicilio = "";
            usuario.Localidad = "";
            usuario.Provincia = "Neuquen";
            idUsuarioTemporal = usuarioNego.GuardarUsuario(usuario);

            //Creo un objeto FotoPerfil
            GuardarFotoPerfil();

            //Creo un objeto RedesSociales
            RedesSociale redesSociale = new RedesSociale();
            redesSociale.IdUsuario = idUsuarioTemporal;
            redesSociale.Facebook = "";
            redesSociale.Instagram = "";
            redesSociale.Twitter = "";
            redesSociale.Youtube = "";
            redesSociale.Flicker = "";
            redesSociale.RedesSociales = false;
            redesSociale.MercadoLibre = false;
            redesSociale.SitioWeb = false;
            redesSociale.TiendaNube = false;
            redesSociale.Ferias = false;
            redesSociale.LocalComercial = false;
            redesSociale.Personal = false;
            redesSociale.ShowRoom = false;
            redesSociale.NoComercializa = false;
            redesSociale.PlataformaOtra = "";
            redesSocialesNego.GuardarRedesSociales(redesSociale);

            //Creo un objeto FormacionAcademica
            FormacionAcademica formacionAcademica = new FormacionAcademica();
            formacionAcademica.IdUsuario = idUsuarioTemporal;
            formacionAcademica.EstudiosOficiales = "";
            formacionAcademica.EstudiosOficialesOtro = "";
            formacionAcademica.TituloObtenido = "";
            formacionAcademica.InstitucionEmisoraTitulo = "";
            formacionAcademica.OtrosEstudios = "";
            formacionAcademica.EsEstudiante = false;
            formacionAcademica.CarreraNombre = "";
            formacionAcademica.CarreraAnioIngreso = "";
            formacionAcademica.CarreraAnioCursada = "";
            formacionAcademica.CarreraDuracion = "";
            formacionAcademica.CarreraInstitucion = "";
            formacionAcademicaNego.GuardarFormacionAcademica(formacionAcademica);

            //Creo un objeto ActividadProfesional
            ActividadProfesional actividadProfesional = new ActividadProfesional();
            actividadProfesional.IdUsuario = idUsuarioTemporal;
            actividadProfesional.DisciplinaProyectual = "";
            actividadProfesional.DisciplinaProyectualOtra = "";
            actividadProfesional.Accesorios = false;
            actividadProfesional.Calzado = false;
            actividadProfesional.Ceramica = false;
            actividadProfesional.DisenioEditorial = false;
            actividadProfesional.DisenioWeb = false;
            actividadProfesional.Joyeria = false;
            actividadProfesional.Madera = false;
            actividadProfesional.Mobiliario = false;
            actividadProfesional.Tejidos = false;
            actividadProfesional.SubSectorOtro = "";
            actividadProfesional.TipoRelacionLaboral = "";
            actividadProfesional.TipoRelacionLaboralOtro = "";
            actividadProfesional.NombreEmpresaAP = "";
            actividadProfesional.LinkEmpresaAP = "";
            actividadProfesional.DescripcionAP = "";
            actividadProfesionalNego.GuardarActividadProfesional(actividadProfesional);

            //Creo un objeto ActividadIndependiente
            ActividadIndependiente actividadIndependiente = new ActividadIndependiente();
            actividadIndependiente.IdUsuario = idUsuarioTemporal;
            actividadIndependiente.SustentoDeVida = "";
            actividadIndependiente.SustentoDeVidaOtro = "";
            actividadIndependiente.TiempoActividadFuncionamiento = "";
            actividadIndependiente.SituacionTributaria = "";
            actividadIndependiente.EstaRegistrado = "";
            actividadIndependiente.EstaRegistradoOtro = "";
            actividadIndependiente.TieneEmpleadosACargo = "";
            actividadIndependiente.CantidadEmpleadosACargo = "";
            actividadIndependiente.FeriasItinerantes = false;
            actividadIndependiente.InternetWeb = false;
            actividadIndependiente.InternetRedesSociales = false;
            actividadIndependiente.LocalEstudioPropio = false;
            actividadIndependiente.LocalesOficinas = false;
            actividadIndependiente.OficinaPrivadaShowroom = false;
            actividadIndependiente.ComoComercializaOtro = "";
            actividadIndependiente.NombreEspacio = "";
            actividadIndependiente.LinkEspacio = "";
            actividadIndependiente.UbicacionEspacio = "";
            actividadIndependiente.FondosPropios = false;
            actividadIndependiente.PrestamosEntidadesPrivadas = false;
            actividadIndependiente.PrestamosEntidadesPublicas = false;
            actividadIndependiente.SociosCapitalistas = false;
            actividadIndependiente.GananciasGenerales = false;
            actividadIndependiente.ComoFinanciaActividadProfesionalOtro = "";
            actividadIndependiente.RealizaVentasServicios = "";
            actividadIndependiente.Cuales = "";
            actividadIndependienteNego.GuardarActividadIndependiente(actividadIndependiente);

            //Creo un objeto de tipo Producto
            Producto producto = new Producto();
            producto.IdUsuario = idUsuarioTemporal;
            producto.CantidadProductosAnio = "";
            producto.TalleresPropios = false;
            producto.TalleresTercerizados = false;
            producto.DondeRealizaProduccionOtro = "";
            producto.PorcentajeProcesoProductivoNeuquen = "";
            productoNego.GuardarProducto(producto);

            //Creo un objeto de tipo MateriaPrima
            MateriaPrima materiaPrima = new MateriaPrima();
            materiaPrima.IdUsuario = idUsuarioTemporal;
            materiaPrima.PorcentajeAdquiereNeuquen = "";
            materiaPrima.Dificultades = "";
            materiaPrimaNego.GuardarMateriaPrima(materiaPrima);

            //Creo un objeto de tipo Maquinaria
            Maquinarium maquinarium = new Maquinarium();
            maquinarium.IdUsuario = idUsuarioTemporal;
            maquinarium.DisponeEquipo = "";
            maquinarium.EquiposPropios = false;
            maquinarium.EquiposPrestados = false;
            maquinarium.EquiposAlquilados = false;
            maquinarium.DisponeEquipoOtro = "";
            maquinarium.Maquinas = false;
            maquinarium.RecursosInformaticos = false;
            maquinarium.Herramientas = false;
            maquinarium.Espacio = false;
            maquinarium.ManoDeObra = false;
            maquinarium.FalenciaOtra = "";
            maquinariaNego.GuardarMaquinaria(maquinarium);









        }
        private void GuardarFotoPerfil()
        {
            string ruta = Server.MapPath("~/imagenes/FotoUsuariosx2.png");

            byte[] imagenEmpleado = File.ReadAllBytes(ruta);

            try
            {
                FotoUsuario fotoUsuarioNuevo = new FotoUsuario();
                fotoUsuarioNuevo.FotoUsuarioCodigo = imagenEmpleado;
                fotoUsuarioNuevo.IdUsuario = idUsuarioTemporal;
                fotoUsuarioNuevo.FotoTemporal = imagenEmpleado;
                fotoUsuarioNego.GuardarFotoUsuario(fotoUsuarioNuevo);
            }
            catch (Exception ex)
            {
            }
        }
    }
}