<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="manGrupos.aspx.cs" Inherits="SPIDEAS.manCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="row">
        <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
    </div>

    <div class="row">

        <div class="col-lg-4 offset-lg-1">
            <!-- Registro -->
            <h2>Registro Grupos</h2>

            <div class="form-group row">
                <label for="lblId" class="control-label">Codigo</label>
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group row">
                <label for="txtNombre" class="control-label">Profesor</label>
                <asp:TextBox ID="txtProfesor" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="El nombre es requerido"
                    ControlToValidate="txtProfesor"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    runat="server"
                    ErrorMessage="El nombre solo puede contener letras"
                    ControlToValidate="txtProfesor"
                    ValidationExpression="[ A-Za-zñÑäÄëËïÏöÖüÜáéíóúáéíóúÁÉÍÓÚÂÊÎÔÛâêîôûàèìòùÀÈÌÒÙ.-]+"></asp:RegularExpressionValidator>
            </div>

               <div class="form-group row">
                <asp:Label ID="Label1" runat="server" Text="Materia"></asp:Label>
                <asp:DropDownList ID="ddlMateria" runat="server" CssClass="form-control" DataTextField="Seleccione">
                </asp:DropDownList>
            </div>

               <div class="form-group row">
                <label for="txtNombre" class="control-label">Aula</label>
                <asp:TextBox ID="txtAula" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server"
                    ErrorMessage="El Aula es requerido"
                    ControlToValidate="txtAula"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>              
            </div>

               <div class="form-group row">
                <label for="lblHorario" class="control-label">Horario</label>
                <asp:TextBox ID="txtHorario" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    runat="server"
                    ErrorMessage="El Horario es requerido"
                    ControlToValidate="txtHorario"
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>              
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
            <h2>Listado Grupos</h2>
            <asp:GridView ID="grvListado" runat="server" CssClass="table table-hover"
                 AutoGenerateColumns="False"
                DataKeyNames="elementoID">

                <Columns>
                    <%-- CommandField Representa un campo especial que muestra botones
                         de comando para realizar operaciones de selección, edición,
                         inserción o eliminación en un control enlazado a datos. --%>
                    <asp:CommandField ShowSelectButton="true" HeaderText="Modificar" SelectText="Modificar" />
                    <asp:BoundField  HeaderText="Codigo"></asp:BoundField>
                    <asp:BoundField HeaderText="Profesor"></asp:BoundField>
                    <asp:BoundField  HeaderText="Materia"></asp:BoundField>
                    <asp:BoundField  HeaderText="Aula"></asp:BoundField>
                    <asp:BoundField  HeaderText="Horario"></asp:BoundField>
                </Columns>
                <HeaderStyle CssClass="table-success" />
            </asp:GridView>
            <!-- Listado -->
        </div>

    </div>
</asp:Content>
