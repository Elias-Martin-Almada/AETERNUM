<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="Catálogo_Web.MiPerfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 14px;
        }
        .formulario-destacado {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        body{
            background-image:url("fondoBody2.jpg");
        }
    </style>
    <script>
        function validar() {

            //capturar el control. Agregar en el Guardar OnClientClick="". TODO esto para el JS.
            const txtApellido = document.getElementById("txtApellido");
            const txtNombre = document.getElementById("txtNombre");
            if (txtApellido.value == "" || txtNombre.value == "") {
                txtApellido.classList.add("is-invalid");
                txtNombre.classList.add("is-invalid");
                //txtApellido.classList.remove("is-valid"); // Remueve la clase is-valid si es inválido
                //txtNombre.classList.remove("is-valid"); // Remueve la clase is-valid si es inválido
                return false;
            }
            txtApellido.classList.add("is-valid");
            txtNombre.classList.add("is-valid");
            //txtApellido.classList.remove("is-invalid"); // Remueve la clase is-invalid si es válido
            //txtNombre.classList.remove("is-invalid"); // Remueve la clase is-invalid si es válido
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--Script para usar ( UpdatePanel )--%>
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>

    <h2></h2>
    <div class="row">
        <hr />
        <hr />
         <div class="col-md-4">
            <div class="mb-3">
                <label class="form-label">Imagen Perfil</label>
                <input type="file" id="txtImagen" runat="server" class="form-control" />
            </div>
            <asp:Image ID="imgNuevoPerfil" ImageUrl="https://www.palomacornejo.com/wp-content/uploads/2021/08/no-image.jpg"
                runat="server" CssClass="img-fluid mb-3 formulario-destacado" />
        </div>

        <div class="col-md-4 formulario-destacado">
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control opacity-50" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" ClientIDMode="Static" CssClass="form-control" runat="server" />
                <%--<asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />--%>
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" ClientIDMode="Static" runat="server" CssClass="form-control" MaxLength="12">
                </asp:TextBox>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button Text="Guardar" OnClientClick="return validar()" OnClick="btnGuardar_Click" ID="btnGuardar" CssClass="btn btn-custom-azul" runat="server" />
                <a class="btn btn-custom-azul" href="/">Regresar</a>
            </div>
                <%--Expresiones Regulares: --%>
                <%--Rango: --%>
                <%--<asp:RangeValidator ErrorMessage="Fuera de rango..." ControlToValidate="txtApellido" Type="Integer" MinimumValue="1" MaximumValue="20" runat="server" />--%>
                <%--Formato Email: --%>
                <%--<asp:RegularExpressionValidator ErrorMessage="Formato email por favor" ControlToValidate="txtApellido" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" />--%>
                <%--Sólo Números: --%>
                <%--<asp:RegularExpressionValidator ErrorMessage="Solo Numeros..." ControlToValidate="txtApellido" ValidationExpression="^[0-9]+$" runat="server"/>--%>
            
            <%--<div class="mb-3">
                <label class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFechaNacimiento" TextMode="Date" />
            </div>--%>
        </div>

    </div>
</asp:Content>
