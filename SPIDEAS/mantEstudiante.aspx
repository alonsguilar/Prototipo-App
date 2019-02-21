<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="mantEstudiante.aspx.cs" Inherits="SPIDEAS.mantEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="row">
        <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
    </div>
     
    <div class="row">
        
        <div class="col-lg-4 offset-lg-1">
            <!-- Registro -->
            <h2>Registro Estudiantes</h2>

                <div class="form-group row">
                <label for="lblId" class="control-label">Cedula</label>
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
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
                <asp:Label ID="Label1" runat="server" Text="Provincia"></asp:Label>
                <asp:DropDownList id="ddlProvincia" runat="server" CssClass="form-control" DataTextField="Seleccione">
                </asp:DropDownList>
            </div>

              <div class="form-group row">
                <label for="lblDireccion" class="control-label">Direccion</label>
                <asp:TextBox ID="txtDireccion" CssClass="form-control" TextMode="MultiLine"
                    runat="server"></asp:TextBox>

            </div>

            <div class="form-group row">
                <label for="lblCorreo" class="control-label">Correo</label>
              <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
            
            </div>

             <div class="form-group row">
                <label for="lblTelefono" class="control-label">Telefono</label>
                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group row">
                <asp:Button ID="btnGuardar" CssClass="btn btn-secondary" runat="server" 
                    Text="Guardar"  />
            </div>
            <asp:HiddenField ID="hiddenID" runat="server" />
            <!-- Registro -->
        </div>

    </div>
</asp:Content>