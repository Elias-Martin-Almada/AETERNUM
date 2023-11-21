<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ArticulosLista.aspx.cs" Inherits="Catálogo_Web.CatalogoLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         body{
            background-image:url("fondoBody2.jpg");
        }
         .formulario-destacado {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
         .texto-blanco {
            color: white;
            font-weight: bold;
         }

    </style>

    <div class="row">
        <hr />
        <hr />
        <div class="col-12 col-md-6">
            <div class="mb-3 formulario-destacado">
                <h1>Lista del Catálogo</h1>
                <a href="FormularioArticulo.aspx" class="btn  btn-custom-azul">Agregar</a>
                <hr />
                <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por Titulos: "></asp:Label>
                <asp:TextBox ID="txtFiltro" OnTextChanged="txtFiltro_TextChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
       <%-- <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end;">--%>
            <div class="mb-3">
                <asp:CheckBox Text="BUSQUEDA AVANZADA"
                    CssClass="texto-blanco" ID="chkAvanzado" runat="server"
                    AutoPostBack="true"
                    OnCheckedChanged="chkAvanzado_CheckedChanged" />
            </div>
       <%-- </div>--%>

        <%if (chkAvanzado.Checked)
            { %>
        <div class="row col-12 col-md-8">
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label Text="Campo" ID="lblCampo" runat="server" />
                    <asp:DropDownList runat="server" AutoPostBack="true" CssClass="form-control" ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged">
                        <asp:ListItem Text="Nombre" />
                        <asp:ListItem Text="Marca" />
                        <asp:ListItem Text="Categoria" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label Text="Criterio" runat="server" />
                    <asp:DropDownList runat="server" ID="ddlCriterio" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label Text="Filtro" runat="server" />
                    <asp:TextBox runat="server" ID="txtFiltroAvanzado" CssClass="form-control" />
                </div>
            </div>
            <%--<div class="col-3">
                <div class="mb-3">
                    <asp:Label Text="Estado" runat="server" />
                    <asp:DropDownList runat="server" ID="ddlEstado" CssClass="form-control">
                        <asp:ListItem Text="Todos" />
                        <asp:ListItem Text="Activo" />
                        <asp:ListItem Text="Inactivo" />
                    </asp:DropDownList>
                </div>
            </div>--%>
        </div>
        <div class="row">
            <div class="col-3">
                <div class="mb-3">
                    <asp:Button Text="Buscar" runat="server" CssClass="btn btn-custom-azul" OnClick="btnBuscar_Click" ID="btnBuscar" />
                </div>
            </div>
        </div>
        <%} %>
    </div>

    <asp:GridView ID="dgvArticulos" runat="server" DataKeyNames="Id"
        CssClass="table table-striped formulario-destacado" AutoGenerateColumns="false"
        OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged"
        OnPageIndexChanging="dgvArticulos_PageIndexChanging"
        AllowPaging="true" PageSize="5">
        <PagerSettings Visible="True" Mode="NumericFirstLast" PageButtonCount="10" Position="Bottom" />
        <PagerStyle CssClass="custom-pager" />
        <Columns>
            <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
            <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" DataFormatString="${0:N0}" />
            <%--<asp:CheckBoxField HeaderText="Activo" DataField="Activo" />--%>
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✏" />
        </Columns>
    </asp:GridView>

</asp:Content>
