<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="manMatricula.aspx.cs" Inherits="SPIDEAS.manMatricula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <asp:Label ID="lblMensaje" runat="server" CssClass="alert alert-dismissible alert-warning" Visible="false" Text=""></asp:Label>
    </div>

        <div class="row">

        <div class="col-lg-4 offset-lg-1">
            <!-- Registro -->
            <h2>Matricula de Cursos</h2>

              <div class="form-group row">
                <label for="lblId" class="control-label">N. Boleta Matricula</label>
                <asp:TextBox ID="txtBoletaMatricula" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group row">
                <label for="lblId" class="control-label">Cedula Estudiantes</label>
                <asp:TextBox ID="txtId" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group row">
                <label for="txtNombre" class="control-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>               
            </div>
                           
            <!-- Registro -->
        </div>

           <div class="col-lg-6 offset-lg-1">
            <!-- Listado -->
            <h2>Listado Cursos</h2>
            <asp:GridView ID="grvListado" runat="server" CssClass="table table-hover"
                AutoGenerateColumns="False" AllowPaging="true"
                DataKeyNames="elementoID">

                <Columns>                    
                    <asp:CommandField ShowSelectButton="true" HeaderText="Matricular" SelectText="Matricular" />
                    <asp:BoundField ReadOnly="True"  HeaderText="Nombre Curso"></asp:BoundField>
                    <asp:BoundField  HeaderText="Profesor"></asp:BoundField>
                    <asp:BoundField  HeaderText="Grupo"></asp:BoundField>
                    <asp:BoundField  HeaderText="Aula"></asp:BoundField>
                    <asp:BoundField HeaderText="Horario"></asp:BoundField>                    
                </Columns>
                <HeaderStyle CssClass="table-success" />
            </asp:GridView>
            <!-- Listado -->
        </div>

    </div>

</asp:Content>
