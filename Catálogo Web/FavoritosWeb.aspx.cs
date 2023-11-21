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
    public partial class FavoritosWeb : System.Web.UI.Page
    {
        public List<Favoritos> ListaFavoritos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener el ID del usuario actual, por ejemplo, desde la sesión o cualquier otro método.
                if (Session["usuario"] != null)
                {
                    Usuario user = (Usuario)Session["usuario"];
                    string idUsuario = user.Id.ToString();

                    FavoritosDatos favoritosDatos = new FavoritosDatos();
                    List<Favoritos> listaFavoritos = favoritosDatos.listarFavoritos(idUsuario);

                    // Crear una lista de objetos Articulo con los detalles de los artículos favoritos.
                    List<Articulo> articulosFavoritos = new List<Articulo>();

                    foreach (Favoritos favorito in listaFavoritos)
                    {
                        // Llamar a un método para obtener los detalles del artículo según su IdArticulo.
                        Articulo articulo = ObtenerDetallesDelArticulo(favorito.IdArticulo);
                        if (articulo != null)
                        {
                            articulosFavoritos.Add(articulo);
                        }
                    }
                    // Vincular la lista de artículos favoritos al Repeater.
                    repRepetidor.DataSource = articulosFavoritos;
                    repRepetidor.DataBind();
                }
            }
        }

        private Articulo ObtenerDetallesDelArticulo(int idArticulo)
        {
            string id = idArticulo.ToString();
            ArticuloDatos datos = new ArticuloDatos();
            List<Articulo> lista = datos.listarArticulos(id);

            if (lista.Count > 0)
            {
                Articulo seleccionado = lista[0];
                return seleccionado;
            }
            else
            {
                return null; // Retornar null si no se encuentra el artículo.
            }
        }

        protected void btnEliminarFavorito_Click(object sender, EventArgs e)
        {
            // obtengo el ID del Articulo.
            int idArticulo = int.Parse(((Button)sender).CommandArgument);
            // Obtener el ID del usuario actual, por ejemplo, desde la sesión o cualquier otro método.
            if (Session["usuario"] != null)
            {
                Usuario user = (Usuario)Session["usuario"];
                int idUsuario = user.Id;

                FavoritosDatos favoritosDatos = new FavoritosDatos();
                favoritosDatos.EliminarFavorito(idUsuario, idArticulo);
                Response.Redirect("FavoritosWeb.aspx");
            }
        }
    }
}