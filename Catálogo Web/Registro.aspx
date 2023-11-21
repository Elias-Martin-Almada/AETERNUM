<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Catálogo_Web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-image:url("fondoBody2.jpg");
        }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <hr />
        <hr />
        <div class="col-12 col-md-4 formulario-destacado">
            <h2>Creá tu perfil Usuario</h2>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
                <asp:RegularExpressionValidator ErrorMessage="Formato email por favor, Ejemplo: usuario@gmail.com" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                    ControlToValidate="txtEmail" CssClass="validacion" runat="server" />
            </div>
            <div class="mb-3">
                <label class="form-label">Contraseña</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password" />
                <asp:RequiredFieldValidator ErrorMessage="Ingresar una contraseña por favor" ControlToValidate="txtPassword" CssClass="validacion" runat="server" />
            </div>
            <asp:Button Text="Registrarse" CssClass="btn btn-custom-azul" ID="btnRegistrarse" OnClick="btnRegistrarse_Click" runat="server" />
            <a href="/" class="btn btn-custom-azul">Cancelar</a>
        </div>
    </div>

</asp:Content>
