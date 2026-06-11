<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebForms_App._Default" ResponseEncoding="utf-8" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main class="d-flex flex-column justify-content-center align-items-center w-100 p-3">
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Nueva Solicitud de Soporte</h1>
            <p class="lead">Complete los detalles a continuación para que nuestro equipo técnico pueda asistirle</p>
        </section>

        <section class="row w-100 bg-light p-4 border border-secondary rounded d-flex flex-column justify-content-center align-items-center">
            <div id="datos-usuario-container">
                <asp:Label ID="Label1" runat="server" Text="DATOS DEL USUARIO" class="h4 text-primary"></asp:Label>
                <div id="datos" class="d-flex flex-column flex-md-row justify-content-start align-items-center py-3 w-100 gap-2 gap-md-4">
                    <div id="campo-nombre" class="d-flex flex-column justify-content-center align-items-start gap-2 w-100 h-100">
                        <asp:Label ID="Label2" runat="server" Text="Nombre Completo:" class="fw-bold"></asp:Label>

                        <asp:TextBox ID="Nombre" runat="server" AutoCompleteType="FirstName" class="w-100 border rounded-2 mw-100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="NombreValidator" runat="server" ErrorMessage="Este campo es obligatorio" ControlToValidate="Nombre" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div id="campo-email" class="d-flex flex-column justify-content-center align-items-start gap-2 w-100 h-100">
                        <asp:Label ID="Label3" runat="server" Text="Email:" class="fw-bold"></asp:Label>
                        <asp:TextBox ID="Email" runat="server" AutoCompleteType="Email" class="w-100 border rounded-2 mw-100"></asp:TextBox>
                        <div class="d-flex">
                            <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Correo no válido" ControlToValidate="Email" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" Font-Size="Small" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Este campo es obligatorio" ControlToValidate="Email" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>

            <hr />
            <div id="detalle-problema-container">
                <asp:Label ID="Label4" runat="server" Text="DETALLES DEL PROBLEMA" class="h4 text-primary"></asp:Label>
                <div id="detalles">
                    <div id="titulo-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                        <asp:Label ID="Label5" runat="server" Text="Titulo del problema:" class="fw-bold"></asp:Label>

                        <asp:TextBox ID="Titulo" runat="server" AutoCompleteType="None" class="w-100 border rounded-2 mw-100" MaxLength="230" ToolTip="Máximo 230 caracteres"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Este campo es obligatorio" ControlToValidate="Titulo" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div id="categoria-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                        <asp:Label ID="Label6" runat="server" Text="Categoría:" class="fw-bold"></asp:Label>

                        <asp:DropDownList ID="Categoria" runat="server" class="w-100 border rounded-2 mw-100" OnSelectedIndexChanged="Categoría_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Text="Hardware" />
                            <asp:ListItem Text="Software" />
                            <asp:ListItem Text="Red" />
                            <asp:ListItem Text="Otros" />
                        </asp:DropDownList>
                    </div>
                    <div id="categoria-personalizada-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                        <asp:Label ID="CategoriaPersonalizadaLabel" runat="server" Text="Escriba su propia categoría:" class="fw-bold" Visible="False"></asp:Label>

                        <asp:TextBox ID="CategoriaPersonalizada" runat="server" AutoCompleteType="None" class="w-100 border rounded-2 mw-100" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="CategoriaPersonalizadaValidator" runat="server" ErrorMessage="Categoría requerida" ControlToValidate="CategoriaPersonalizada" Font-Size="Small" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                    </div>
                    <div id="descripcion-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                        <asp:Label ID="Label7" runat="server" Text="Descripción detallada:" class="fw-bold"></asp:Label>

                        <asp:TextBox ID="Descripcion" runat="server" Rows="4" TextMode="MultiLine" Width="281px" class="w-100 border rounded-2 mw-100"></asp:TextBox>
                    </div>
                    <div id="prioridad-problema" class="d-flex flex-column justify-content-start align-items-start py-1 w-100">
                        <asp:Label ID="Label8" runat="server" Text="Nivel de prioridad:" class="fw-bold"></asp:Label>

                        <asp:RadioButtonList ID="Prioridad" runat="server" class="d-md-flex justify-content-md-center align-items-md-center">
                            <asp:ListItem Text="Bajo" Selected="True" />
                            <asp:ListItem Text="Medio" />
                            <asp:ListItem Text="Alto" />
                            <asp:ListItem Text="Crítico" />
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
            <asp:Button ID="Enviar" runat="server" Text="Enviar Solicitud" class="btn btn-primary" OnClick="Enviar_Click"/>
        </section>
    </main>

</asp:Content>
