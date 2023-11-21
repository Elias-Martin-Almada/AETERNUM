using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using controlador;
using dominio;
using System.Text.RegularExpressions;

namespace Catálogo_Web
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloDatos datos = new ArticuloDatos();
            //ListaArticulo = datos.listarConSP();
            // Cambios para el Buscar:
            Session["listaArticulos"] = datos.listarConSP();
            ListaArticulo = (List<Articulo>)Session["listaArticulos"];
            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulo;
                repRepetidor.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            List<Articulo> lista = (List<Articulo>)Session["listaArticulos"];
            List<Articulo> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();
        }

        protected void btnFavoritos_Click(object sender, EventArgs e)
        {
            // obtengo el ID del Articulo.
            int idArticulo = int.Parse(((Button)sender).CommandArgument);
            // Obtener el ID del usuario actual, por ejemplo, desde la sesión o cualquier otro método.
            if (Session["usuario"] != null)
            {
                Usuario user = (Usuario)Session["usuario"];
                int idUsuario = user.Id;

                FavoritosDatos favoritosDatos = new FavoritosDatos();
                favoritosDatos.AgregarFavorito(idUsuario, idArticulo);
                Response.Redirect("FavoritosWeb.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        //protected string GetImageUrl(object url)
        //{
        //    if (url != null)
        //    {
        //        string imageFileName = url.ToString();
        //        string imagePath = Server.MapPath("~/Images/" + imageFileName);
        //        return imagePath;
        //    }
        //    else
        //    {
        //        // Si la URL de la imagen es nula, puedes proporcionar una imagen de marcador de posición o una URL de imagen por defecto.
        //        return "ruta de imagen por defecto o de marcador de posición";
        //    }
        //}

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}