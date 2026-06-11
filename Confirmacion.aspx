<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="WebForms_App.Confirmacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main class="d-flex flex-column justify-content-center align-items-center w-100 p-3">
    <section class="row" aria-labelledby="aspnetTitle">
        <h1 id="aspnetTitle">Confirmación de Solicitud</h1>
        <asp:Label ID="IdConfirmacion" Font-Bold="True" runat="server" ForeColor="#00CC00" class="d-flex justify-content-center align-baseline align-items-center"></asp:Label>
    </section>

    <section class="row w-100 bg-light p-4 border border-secondary rounded d-flex flex-column justify-content-center align-items-center">
        <div id="datos-usuario-container">
            <asp:Label ID="Label1" runat="server" Text="DATOS DEL USUARIO" class="h4 text-primary"></asp:Label>
            <div id="datos" class="d-flex flex-column flex-md-row justify-content-start align-items-center py-3 w-100 gap-2 gap-md-4">
                <div id="campo-nombre" class="d-flex flex-column justify-content-center align-items-start gap-2 w-100 h-100">
                    <asp:Label ID="Label2" runat="server" Text="Nombre Completo:" class="fw-bold"></asp:Label>
                    <asp:Label ID="Nombre" runat="server" Text=""></asp:Label>
                
                </div>
                <div id="campo-email" class="d-flex flex-column justify-content-center align-items-start gap-2 w-100 h-100">
                    <asp:Label ID="Label3" runat="server" Text="Email:" class="fw-bold"></asp:Label>
                    <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

        <hr />
        <div id="detalle-problema-container">
            <asp:Label ID="Label4" runat="server" Text="DETALLES DEL PROBLEMA" class="h4 text-primary"></asp:Label>
            <div id="detalles">
                <div id="titulo-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                    <asp:Label ID="Label5" runat="server" Text="Titulo del problema:" class="fw-bold"></asp:Label>
                    <asp:Label ID="TituloProblema" runat="server" Text=""></asp:Label>
                </div>
                <div id="categoria-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                    <asp:Label ID="Label6" runat="server" Text="Categoría:" class="fw-bold"></asp:Label>
                    <asp:Label ID="Categoria" runat="server" Text=""></asp:Label>
                </div>
                <div id="descripcion-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                    <asp:Label ID="Label7" runat="server" Text="Descripción detallada:" class="fw-bold"></asp:Label>
                    <asp:Label ID="Descripcion" runat="server" Text=""></asp:Label>
                </div>
                <div id="prioridad-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                    <asp:Label ID="Label8" runat="server" Text="Nivel de prioridad:" class="fw-bold"></asp:Label>
                    <asp:Label ID="Prioridad" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </section>
</main>
</asp:Content>
