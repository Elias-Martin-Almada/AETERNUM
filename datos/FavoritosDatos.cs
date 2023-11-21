using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;
using controlador;

namespace controlador
{
    public class FavoritosDatos
    {
        public List<Favoritos> listarFavoritos(string idUsuario)
        {
            List<Favoritos> listaFavoritos = new List<Favoritos>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT IdArticulo FROM FAVORITOS WHERE IdUser = @IdUser");
                datos.setearParametro("@IdUser", idUsuario);
                datos.ejecutarLectura();
         
                while (datos.Lector.Read())
                {
                    Favoritos aux = new Favoritos();
                    aux.IdArticulo = (int)datos.Lector["IdArticulo"];
                    //favoritos.Add(Convert.ToInt32(datos.Lector["IdArticulo"]));
                    listaFavoritos.Add(aux);
                }

                return listaFavoritos;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }

        public void AgregarFavorito(int idUsuario, int idArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("INSERT INTO FAVORITOS (IdUser, IdArticulo) VALUES (@IdUser, @IdArticulo)");
                datos.setearParametro("@IdUser", idUsuario);
                datos.setearParametro("@IdArticulo", idArticulo);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void EliminarFavorito(int idUsuario, int idArticulo)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("DELETE FROM FAVORITOS WHERE IdUser = @IdUser AND IdArticulo = @IdArticulo");
                datos.setearParametro("@IdUser", idUsuario);
                datos.setearParametro("@IdArticulo", idArticulo);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
