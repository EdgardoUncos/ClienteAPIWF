<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClienteAPIWF.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Bienvenido a Tu Catalogo de Proyectos</h1>

    <%-- Listado de Cards con forEach--%>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%foreach (var item in ListaProyectos)
            {%>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><%:item.Title %></h5>
                    <p class="card-text"><%:item.Description%></p>
                    <a href="detalleproyecto.aspx?id=<%:item.Id %>">ver detalle</a>
                </div>
            </div>
        </div>

        <%} %>
    </div>
    
</asp:Content>
