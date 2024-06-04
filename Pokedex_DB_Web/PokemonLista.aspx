<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex_DB_Web.PokemonLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Esto es una lista de pokemones</h1>
    <asp:GridView ID="dgvPokemon" runat="server" CssClass="table" AutoGenerateColumns="false"
        DataKeyNames="Id" OnSelectedIndexChanged="dgvPokemon_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemon_PageIndexChanging" AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Numero" DataField="Numero" />
<%--            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />--%>
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
            <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="Editar" />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
