<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="SPIDEAS.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%= ConfigurationManager.AppSettings["nombreApp"] %></title>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrapPulse.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Bienvenida -->
        <div class="jumbotron">
            <h1 class="display-3">Sistema Dirección de Extensión y Acción Social Estudio de factibilidad</h1>
            <p class="lead">Bienvenido</p>
            <img src="imagenes/utn.jpg" class="img-fluid" style="width:50%;" alt="Libros" />
            <hr class="my-4" />
            <p class="lead ">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/mantEstudiante.aspx" runat="server" CssClass="btn btn-primary btn-lg">Ingresar</asp:HyperLink>
             </p>
        </div>
        <!-- Bienvenida -->
        <!-- Footer -->
        <footer class="footer text-center bg-secondary ">
            <!-- Copyright -->
            <div class="container">
                <asp:Label ID="lblCopyright" runat="server" Text="<%$ AppSettings: copyright %>"></asp:Label>
            </div>
            <!-- Copyright -->

        </footer>
        <!-- Footer -->
    </form>
</body>
</html>

