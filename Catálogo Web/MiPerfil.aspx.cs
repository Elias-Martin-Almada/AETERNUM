using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using controlador;

namespace Catálogo_Web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["usuario"]))
                    {
                        Usuario user = (Usuario)Session["usuario"];
                        txtEmail.Text = user.Email;
                        txtEmail.ReadOnly = true;
                        txtNombre.Text = user.Nombre;
                        txtApellido.Text = user.Apellido;
                        //txtFechaNacimiento.Text = user.FechaNacimiento.ToString("yyyy-MM-dd"); // Formato que espera el txtFecha.
                        if (!string.IsNullOrEmpty(user.ImagenPerfil))
                            imgNuevoPerfil.ImageUrl = "~/Images/" + user.ImagenPerfil;
                    }
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                // Si no es valida la pantalla, no Guardo todo de nuevo. Controles Validators.
                Page.Validate();
                if (!Page.IsValid)
                {
                    return;
                }
                // Si la página es válida, agregar clases is-valid a los campos.
                txtNombre.CssClass = "form-control is-valid";
                txtApellido.CssClass = "form-control is-valid";

                UsuarioDatos datos = new UsuarioDatos();
                Usuario user = (Usuario)Session["usuario"];
                // Escribir Imagen:
                if (txtImagen.PostedFile.FileName != "")
                {
                    string ruta = Server.MapPath("./Images/");              
                    txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");              
                    user.ImagenPerfil = "perfil-" + user.Id + ".jpg";
                }

                user.Nombre = txtNombre.Text;
                user.Apellido = txtApellido.Text;

                // Guardar datos perfil.
                datos.actualizar(user);

                // Leer Imagen:
                Image img = (Image)Master.FindControl("imgAvatar");    
                img.ImageUrl = "~/Images/" + user.ImagenPerfil;

            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
            }
        }
    }
}