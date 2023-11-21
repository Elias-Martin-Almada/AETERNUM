<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="Catálogo_Web.Contacto" %>

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

        .font-bold {
            font-weight: bold;
        }

        .formulario-destacado {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        footer {
            background-color: #f8f8f8;
            text-align: center;
            padding: 5px; /* Reducir el padding a la mitad */
            margin-top: 10px; /* Ajustar el margen superior según sea necesario */
            width: 85%; /* Reducir el ancho del footer al 80% del ancho disponible */
            margin-left: auto; /* Centrar el footer */
            margin-right: auto; /* Centrar el footer */
        }
    </style>
    <hr />
    <hr />
    <hr />
    <div class="container titulos">
        <h2>⚡ AETERNUM ⚡</h2>
    </div>
    <hr />
    <div class="row formulario-destacado align-items-center justify-content-center">
        <hr />
        <p class="font-bold">En Aeternum, nuestra pasión es ofrecerte prendas de calidad que van más allá de lo convencional, donde cada remera cuenta una historia única.</p>
        <p class="font-bold">Nos enorgullecemos de presentarte una amplia gama de remeras que se adaptan a tus necesidades y personalidad. Ya sea que busques expresarte a través de diseños personalizados o busques la elegancia en nuestras opciones lisas, estamos aquí para ayudarte a encontrar tu estilo perfecto.</p>
        <p class="font-bold">Ubicados en Posadas, hemos cultivado un espacio donde la creatividad, la calidad y la originalidad convergen. Nuestro compromiso con la excelencia en cada detalle y nuestro amor por la moda se reflejan en cada remera que sale de nuestra tienda.</p>
        <p class="font-bold">En Aeternum, no solo vendemos prendas, sino que creamos conexiones duraderas a través de la moda. Nuestra misión es no solo vestirte, sino empoderarte para que te sientas auténtico en cada ocasión. Uníte a nuestra comunidad, donde la individualidad se celebra y el estilo es Eterno.</p>
        <div class="col-auto d-flex justify-content-center">
            <div class="d-flex align-items-center flex-column">
                <p class="font-bold">POR CUALQUIER CONSULTA: 👇🏼</p>
                <a href="https://www.instagram.com/aeternum_posadas/">
                    <img src="https://logodownload.org/wp-content/uploads/2017/04/instagram-logo-2.png" class="img-fluid" alt="Instagram" style="max-width: 120px; height: 100px;">
                </a>
                <br>
                <a href="https://l.wl.co/l?u=https%3A%2F%2Fwww.facebook.com%2Fprofile.php%3Fid%3D61551133388228">
                    <img src="https://marcas-logos.net/wp-content/uploads/2020/01/Facebook-Novo-Logo.jpg" class="img-fluid" alt="WhatsApp" style="max-width: 125px; height: 90px;">
                </a>
                <br>
                <a href="https://wa.me/c/5493757621292">
                    <img src="https://logodownload.org/wp-content/uploads/2015/04/whatsapp-logo-1.png" class="img-fluid" alt="WhatsApp" style="max-width: 80px; height: 80px;">
                </a>
                <a href="mailto:aeternum215@gmail.com">
                    <img src="https://logodix.com/logo/877390.png" class="img-fluid" alt="WhatsApp" style="max-width: 90px; height: 90px;">
                </a>
                <p>aeternum215@gmail.com</p>
            </div>
        </div>
    </div>

    <footer class="text-center mt-5 formulario-destacado">
        <p class=" font-bold">🚧 DESARROLLADO POR 🚧 <a href="https://www.linkedin.com/in/elias-martin-almada-5a8822254/">ELIAS MARTIN ALMADA</a></p>
        <p class="font-bold">DERECHOS RESERVADOS &copy; 2023 Aeternum</p>
    </footer>
</asp:Content>
