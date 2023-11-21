<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FavoritosWeb.aspx.cs" Inherits="Catálogo_Web.FavoritosWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style> 
        body{
            background-image:url("fondoBody2.jpg");
        }
        .titulos{
            margin:auto;
            text-align:center;  
            background-color: #c2fbd7;
            border-radius:10px;
            padding:5px
        }
    </style>
    <hr />
    <hr />
    <hr />
    <div class="container titulos">   
        <h2>⚡ Favoritos ⚡</h2>        
    </div>

    <div class="row row-cols-1 row-cols-md-4 g-4">

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card" style="background-color:lightgray; margin: 15px; max-width: 300px;">
                        <%--<img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">--%>
                        <img src='<%# ResolveUrl("~/ImgArticulo/" + Eval("UrlImagen")) %>' class="card-img-top" alt="...">
                        <div class="card-body">
                            <div style="display: flex; justify-content: center;">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            </div>
                             <div style="display: flex; justify-content: center;">
                                <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>" class="btn btn-custom-azul" style="margin-right: 4px">Detalles</a>
                                <asp:Button Text="Eliminar" CssClass="btn  btn-custom-azul" ID="btnEliminarFavorito" OnClick="btnEliminarFavorito_Click" CommandArgument='<%#Eval("Id") %>' CommandName="ArticuloId" runat="server"  />   
                             </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
