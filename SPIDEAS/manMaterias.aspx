<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="manMaterias.aspx.cs" Inherits="SPIDEAS.manMaterias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
    </div>

    <div class="row">

        <div class="col-lg-4 offset-lg-1">
            <!-- Registro -->
            <h2>Registro Materias</h2>

            <div class="form-group row">
                <label for="lblId" class="control-label">Codigo</label>
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group row">
                <label for="txtNombre" class="control-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="El nombre es requerido"
                    ControlToValidate="txtNombre"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server"
                    ErrorMessage="El nombre solo puede contener letras"
                    ControlToValidate="txtNombre"
                    ValidationExpression="[ A-Za-zñÑäÄëËïÏöÖüÜáéíóúáéíóúÁÉÍÓÚÂÊÎÔÛâêîôûàèìòùÀÈÌÒÙ.-]+"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group row">
                <label for="lblDireccion" class="control-label">Descripcion</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine"
                    runat="server"></asp:TextBox>

            </div>

           <div class="form-group row">
                <asp:Button ID="btnGuardar" CssClass="btn btn-dark" runat="server"
                    Text="Guardar" />
            </div>

            <asp:HiddenField ID="hiddenID" runat="server" />
            <!-- Registro -->
        </div>
        
          <div class="col-lg-6 offset-lg-1">
            <!-- Listado -->
            <h2>Listado Materias</h2>
            <asp:GridView ID="grvListado" runat="server" CssClass="table table-hover"
                 AutoGenerateColumns="False"
                DataKeyNames="elementoID">

                <Columns>
                    <%-- CommandField Representa un campo especial que muestra botones
                         de comando para realizar operaciones de selección, edición,
                         inserción o eliminación en un control enlazado a datos. --%>
                    <asp:CommandField ShowSelectButton="true" HeaderText="Modificar" SelectText="Modificar" />
                    <asp:BoundField  HeaderText="Codigo"></asp:BoundField>
                    <asp:BoundField HeaderText="Nombre"></asp:BoundField>
                    <asp:BoundField  HeaderText="Descripcion"></asp:BoundField>
                </Columns>
                <HeaderStyle CssClass="table-success" />
            </asp:GridView>
            <!-- Listado -->
        </div>

    </div>
</asp:Content>
