using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDominio;
using CapaNegocio;

namespace CDNEU
{
    public partial class CuentaUsuario : System.Web.UI.Page
    {
        UsuarioNego usuarioNego = new UsuarioNego();
        static string usuarioControlNombre;

        static int globalIdUsuario;
        static string globalNombreUsuario;
        static string globalContrasenia;
        static int globalGrupo;
        static bool globalActivo;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            lblMensaje.Text = "";

            globalIdUsuario = Convert.ToInt32(Session["userid"].ToString());
            globalNombreUsuario = Session["userlogin"].ToString();
            globalContrasenia = Session["usercontrasenia"].ToString();
            globalGrupo = Convert.ToInt32(Session["usergrupo"].ToString());
            globalActivo = Convert.ToBoolean(Session["userActivo"]);

            ObtenerUsuario();
        }

        private void ObtenerUsuario()
        {
            Usuario usuario = usuarioNego.ObtenerUsuario(globalIdUsuario);
            txtRegistroNombreUsuario.Text = usuario.NombreUsuario;
            txtRegistroContrasenia.Text = usuario.Contrasenia;

            usuarioControlNombre = usuario.NombreUsuario;
        }
        protected void btnActualizarUsuario_Click(object sender, EventArgs e)
        {

            ActualizarUsuario();
            LimpiarFormularioUsuario();
        }

        protected void btnActualizarContrasenia_Click(object sender, EventArgs e)
        {
            ActualizarContrasenia();
            LimpiarFormularioUsuario();
        }

        public void ActualizarUsuario()
        {
            if (txtRegistroNombreUsuario.Text != "")
            {
                //Verifico
                Usuario usuarioControl = usuarioNego.ControlarDuplicadoUsuario(txtRegistroNombreUsuario.Text);

                if (usuarioControl == null)
                {
                    //significa que no esta en la base, entonces se puede actualizar
                    // => ACTUALIZO

                    Usuario usuarioNuevo = new Usuario();

                    Usuario usuarioActual = usuarioNego.ObtenerUsuario(globalIdUsuario);

                    usuarioNuevo.IdUsuario = usuarioActual.IdUsuario;
                    usuarioNuevo.NombreUsuario = txtRegistroNombreUsuario.Text; //este es el unico dato que cambia!!!
                    usuarioNuevo.Contrasenia = usuarioActual.Contrasenia;
                    usuarioNuevo.Grupo = usuarioActual.Grupo;
                    usuarioNuevo.Activo = usuarioActual.Activo;
                    usuarioNuevo.Nombre = usuarioActual.Nombre;
                    usuarioNuevo.Apellido = usuarioActual.Apellido;
                    usuarioNuevo.Dni = usuarioActual.Dni;
                    usuarioNuevo.CorreoElectronico = usuarioActual.CorreoElectronico;
                    usuarioNuevo.Telefono = usuarioActual.Telefono;
                    usuarioNuevo.Domicilio = usuarioActual.Domicilio;
                    usuarioNuevo.Localidad = usuarioActual.Localidad;
                    usuarioNuevo.Provincia = usuarioActual.Provincia;
                    usuarioNuevo.FechaNacimiento = usuarioActual.FechaNacimiento;

                    usuarioNego.ActualizarUsuario(usuarioNuevo);

                    //usuarioNego.ActualizarUsuarioSoloNombreUsuario(txtRegistroNombreUsuario.Text);
                    Session["userlogin"] = txtRegistroNombreUsuario.Text;
                    lblMensaje.Text = "Nombre de Usuario Actualizado";
                }
                else if (usuarioControl != null)
                {
                    //1ra Opcion: el nombre ingresado es igual al nombre cargado
                    if (usuarioControlNombre == usuarioControl.Nombre)
                    {
                        //Actualizo

                        Usuario usuarioNuevo = new Usuario();

                        Usuario usuarioActual = usuarioNego.ObtenerUsuario(globalIdUsuario);

                        usuarioNuevo.IdUsuario = usuarioActual.IdUsuario;
                        usuarioNuevo.NombreUsuario = txtRegistroNombreUsuario.Text; //este es el unico dato que cambia!!!
                        usuarioNuevo.Contrasenia = usuarioActual.Contrasenia;
                        usuarioNuevo.Grupo = usuarioActual.Grupo;
                        usuarioNuevo.Activo = usuarioActual.Activo;
                        usuarioNuevo.Nombre = usuarioActual.Nombre;
                        usuarioNuevo.Apellido = usuarioActual.Apellido;
                        usuarioNuevo.Dni = usuarioActual.Dni;
                        usuarioNuevo.CorreoElectronico = usuarioActual.CorreoElectronico;
                        usuarioNuevo.Telefono = usuarioActual.Telefono;
                        usuarioNuevo.Domicilio = usuarioActual.Domicilio;
                        usuarioNuevo.Localidad = usuarioActual.Localidad;
                        usuarioNuevo.Provincia = usuarioActual.Provincia;
                        usuarioNuevo.FechaNacimiento = usuarioActual.FechaNacimiento;

                        usuarioNego.ActualizarUsuario(usuarioNuevo);

                        //usuarioNego.ActualizarUsuarioSoloNombreUsuario(txtRegistroNombreUsuario.Text);
                        Session["userlogin"] = txtRegistroNombreUsuario.Text;
                        lblMensaje.Text = "Nombre de Usuario Actualizado Correctamente";
                    }
                    else if (usuarioControlNombre != usuarioControl.Nombre)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('El Nombre de Usuario ya existe en la Base de Datos. Por favor, ingrese otro.')", true);
                        lblMensaje.Text = "El Nombre de Usuario [" + txtRegistroNombreUsuario.Text + "] ya existe en la Base de Datos. Por favor, ingrese un nombre diferente.";
                        txtRegistroNombreUsuario.Text = Session["userlogin"].ToString();
                    }
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Debe completar el campo Nombre de Usuario.')", true);
                lblMensaje.Text = "Debe completar el campo Nombre de Usuario.";
            }
        }

        public void ActualizarContrasenia()
        {

            //1ro Chequeo que los campos existan
            if (txtRegistroNuevaContrasenia.Text != "" & txtRegistroReingresarNuevaContrasenia.Text != "")
            {
                //2do Chequeo que los campos sean iguales
                if (txtRegistroNuevaContrasenia.Text == txtRegistroReingresarNuevaContrasenia.Text)
                {
                    //Los campos coinciden entonces actualizo contraseña

                    Usuario usuarioNuevo = new Usuario();

                    Usuario usuarioActual = usuarioNego.ObtenerUsuario(globalIdUsuario);

                    usuarioNuevo.IdUsuario = usuarioActual.IdUsuario;
                    usuarioNuevo.NombreUsuario = usuarioActual.NombreUsuario;
                    usuarioNuevo.Contrasenia = txtRegistroNuevaContrasenia.Text;
                    usuarioNuevo.Grupo = usuarioActual.Grupo;
                    usuarioNuevo.Activo = usuarioActual.Activo;
                    usuarioNuevo.Nombre = usuarioActual.Nombre;
                    usuarioNuevo.Apellido = usuarioActual.Apellido;
                    usuarioNuevo.Dni = usuarioActual.Dni;
                    usuarioNuevo.CorreoElectronico = usuarioActual.CorreoElectronico;
                    usuarioNuevo.Telefono = usuarioActual.Telefono;
                    usuarioNuevo.Domicilio = usuarioActual.Domicilio;
                    usuarioNuevo.Localidad = usuarioActual.Localidad;
                    usuarioNuevo.Provincia = usuarioActual.Provincia;
                    usuarioNuevo.FechaNacimiento = usuarioActual.FechaNacimiento;

                    usuarioNego.ActualizarUsuario(usuarioNuevo);

                    lblMensaje.Text = "La Contraseña se Actualizó Correctamente";
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('No coinciden los campos.')", true);
                    lblMensaje.Text = "No coinciden los campos.";
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Correct", "alert('Debe completar todos los campos.')", true);
                lblMensaje.Text = "Debe completar todos los campos.";
            }
        }

        public void LimpiarFormularioUsuario()
        {
            txtRegistroNombreUsuario.Text = Session["userlogin"].ToString();
            txtRegistroContrasenia.Text = Session["usercontrasenia"].ToString();
            txtRegistroNuevaContrasenia.Text = "";
            txtRegistroReingresarNuevaContrasenia.Text = "";
        }
    }
}