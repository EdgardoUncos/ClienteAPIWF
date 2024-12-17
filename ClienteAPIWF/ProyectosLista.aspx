<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProyectosLista.aspx.cs" Inherits="ClienteAPIWF.ProyectosLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="dgvListado" runat="server" DataKeyNames="Id"
        CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvListado_SelectedIndexChanged">
        <Columns>
            <asp:BoundField HeaderText="Titulo" DataField="Title" />
            <asp:BoundField HeaderText="Descripcion" DataField="Description" />
            <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="✍" />
        </Columns>
    </asp:GridView>
    <a href="FormularioProyecto.aspx" class="btn btn-primary">Agregar Proyecto</a>
</asp:Content>
    
