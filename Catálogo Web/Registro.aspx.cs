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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                // Si no es valida la pantalla de registro, no entra. Controles Validators.
                Page.Validate();
                if (!Page.IsValid)
                {
                    return;
                }

                // Validacion: Le mando SOLO el control, que es tipo Text. 
                if (Validacion.validaTextoVacio(txtEmail) || Validacion.validaTextoVacio(txtPassword))
                {
                    Session.Add("error", "Debes completar ambos campos...");
                    Response.Redirect("Error.aspx");
                }

                Usuario user = new Usuario();
                UsuarioDatos datos = new UsuarioDatos(); 
                EmailService emailService = new EmailService();

                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                user.Id = datos.insertarNuevo(user);
                Session.Add("usuario", user); // Con esto queda la sesion Abierta, "AutoLogin".

                emailService.armarCorreo(user.Email, "Bienvenido Usuario", "INGRESASTE AL CATÁLOGO AETERNUM...");
                emailService.enviarEmail();
                Response.Redirect("Default.aspx", false);
            }
            //catch (System.Threading.ThreadAbortException ex) { } 
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                throw;
            }
        }
    }
}