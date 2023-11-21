<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Informacion.aspx.cs" Inherits="Catálogo_Web.Informacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-image: url("fondoBody2.jpg");
        }

        .titulos {
            margin: auto;
            text-align: center;
            background-color: #c2fbd7;
            border-radius: 10px;
            padding: 5px
        }
    </style>
    <hr />
    <hr />
    <hr />
    <div class="container titulos">
        <h2>⚡ ¿Como puedo personalizar mis Remeras? ⚡</h2>
    </div>
    <hr />
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col-md-3">
            <div class="card h-100" style="background-color:lightcyan">
                <img src="https://thumb.ac-illust.com/bc/bc4a9fe9768a844355756cf540322a0a_t.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Define tu idea 💡:</h5>
                    <p class="card-text">Debes tener una idea clara de lo que quieres en tu remera. Esto incluye el diseño, los colores de la remera y estampa. Podes proporcionar imagenes, dibujos o bocetos de tu idea.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100" style="background-color:antiquewhite">
                <img src="https://thumb.ac-illust.com/bc/bc4a9fe9768a844355756cf540322a0a_t.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Ubicar estampa 📌:</h5>
                    <p class="card-text">Podes especificar si prefieres que esté en el frente, la espalda, el pecho o la manga por ejemplo. Esto ayudará a garantizar que el diseño se ajuste a tus expectativas.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100" style="background-color:lightcyan">
                <img src="https://thumb.ac-illust.com/bc/bc4a9fe9768a844355756cf540322a0a_t.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Talles y cantidad 📦:</h5>
                    <p class="card-text">Indica la cantidad de remeras que deseas personalizar y los talles que necesitas. Proporcionar una lista detallada para que podamos garantizar que todos los participantes de tu pedido reciban el talle correcto.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card h-100" style="background-color:antiquewhite">
                <img src="https://thumb.ac-illust.com/bc/bc4a9fe9768a844355756cf540322a0a_t.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Pago y depósito 💰:</h5>
                    <p class="card-text">Para comenzar a trabajar en tu pedido, requerimos un depósito del 50% del costo total. Una vez listos para entregar, se realizará el pago del 50% restante. Este depósito garantiza que tu pedido esté en proceso y asegura el producto final que deseas.</p>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="card">
        <div class="card-body" style="background-color:whitesmoke">
            🙋🏻‍♂️Recorda hacer tu pedido con almenos 10 días de anticipación a la fecha en la que planeas usar las remeras. 
            Esto nos dará el tiempo necesario para producir y entregar tu pedido a tiempo, sin apuros. 😉
        </div>
    </div>
    <hr />  
</asp:Content>
