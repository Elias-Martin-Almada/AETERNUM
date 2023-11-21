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
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != "" && !IsPostBack)
            {
                ArticuloDatos datos = new ArticuloDatos();
                List<Articulo> lista = datos.listarArticulos(id);
                Articulo seleccionado = lista[0];

                lblNombre.Text = seleccionado.Nombre;
                lblDescripcion.Text = seleccionado.Descripcion;
            //    //lblPrecio.Text = "$ " + seleccionado.Precio.ToString("0.00");
                lblMarca.Text = "Marca: " + seleccionado.Marca.Descripcion.ToString();
                lblCategoria.Text = "Categoria: " + seleccionado.Categoria.Descripcion.ToString();
                lblPrecio.Text = "Precio: $ " + string.Format("{0:N0}", seleccionado.Precio); // Formatear el precio como "5.500"
                //imgArticulo.ImageUrl = seleccionado.UrlImagen;
                if (!string.IsNullOrEmpty(seleccionado.UrlImagen))
                    imgArticulo.ImageUrl = "~/ImgArticulo/" + seleccionado.UrlImagen;
            }
        }
    }
}