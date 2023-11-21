<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioArticulo.aspx.cs" Inherits="Catálogo_Web.FormularioArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/css/Botones.css" />

    <%--Codigo js para la vista previa de Imagenes a cargar en el Input--%>
    <script type="text/javascript">
        function previewImage() {
            var fileInput = document.getElementById('<%= txtUrlImagen.ClientID %>');
            var imgArticulo = document.getElementById('<%= imgArticulo.ClientID %>');

            if (fileInput.files && fileInput.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    imgArticulo.src = e.target.result;
                };

                reader.readAsDataURL(fileInput.files[0]);
            } else {
                imgArticulo.src = "https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png";
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-image: url("fondoBody2.jpg");
        }

        .formulario-destacado {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
    </style>

    <%--Script para usar UpdatePanel--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row formulario-destacado">
        <hr />
        <div class="col-10 col-md-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Codigo de Articulo: </label>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre: </label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Marca: </label>
                <asp:DropDownList ID="ddlMarca" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoria:</label>
                <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion: </label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
            </div>

        </div>

        <div class="col-10 col-md-6">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrl" class="form-label">Url Imagen</label>
                        <input type="file" id="txtUrlImagen" runat="server" class="form-control" accept="image/*" onchange="previewImage()" />
                    </div>
                    <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png"
                        runat="server" ID="imgArticulo" Width="60%" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <div class="col-3">
                <div class="mb-3">
                    <label for="txtPrecio" class="form-label">Precio: </label>
                    <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
                </div>
            </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-custom-azul" OnClick="btnAceptar_Click" runat="server" />
                <a class="btn btn-custom-azul" href="ArticulosLista.aspx">Cancelar</a>
                <%--<asp:Button ID="btnInactivar" OnClick="btnInactivar_Click" CssClass="btn btn-warning" runat="server" Text="Inactivar" />--%>
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Button Text="Eliminar" ID="btnEliminar" OnClick="btnEliminar_Click" CssClass="btn btn-custom-rojo btn-outline-danger" runat="server" />
                        <%if (ConfirmaEliminacion)
                            {%>
                        <asp:CheckBox Text="Confirmar Eliminación" ID="chkConfirmaEliminacion" runat="server" />
                        <asp:Button Text="Eliminar" ID="btnConfirmaEliminar" OnClick="btnConfirmaEliminar_Click" CssClass="btn btn-custom-rojo" runat="server" />
                        <%}%>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </div>

</asp:Content>
