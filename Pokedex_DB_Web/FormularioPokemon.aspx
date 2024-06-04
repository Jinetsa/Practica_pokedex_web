<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="Pokedex_DB_Web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" />
    <div class="row">
        <h1>Este es el formulario</h1>
        <div class="col-6">
            <div class="mb-3">
                <%--ID--%>
                <label for="txtId" class="form-label">ID</label>
                <asp:TextBox ID="txtId" class="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <%--NOMBRE--%>
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" class="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <%--NUMERO--%>
                <label for="txtNumero" class="form-label">Numero</label>
                <asp:TextBox ID="txtNumero" class="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <%--TIPO--%>
                <label for="ddlTipo" class="form-label">Tipo</label>
                <asp:DropDownList ID="ddlTipo" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <%--DEBILIDAD--%>
                <label for="ddlDebilidad" class="form-label">Debilidad</label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>


        <div class="col-6">
            <div class="mb-3">
                <%--DESCRIPCION--%>
                <label for="txtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" class="form-control" runat="server" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <%--IMAGEN--%>
                        <label for="txtUrlImagen" class="form-label">Url Imagen</label>
                        <asp:TextBox ID="txtUrlImagen" class="form-control" runat="server" AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged" />
                    </div>
                    <asp:Image ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-1.png" ID="imgPokemon" Width="60%" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

