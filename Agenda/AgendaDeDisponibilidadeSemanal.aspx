<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendaDeDisponibilidadeSemanal.aspx.cs" Inherits="Agenda.AgendaDeDisponibilidadeSemanal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agenda de disponibilidade semanal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:label ID="Label1" runat="server" Text="Selecione os dias da semana que você estará disponível para trabalhar:"></asp:label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Domingo</asp:ListItem>
                <asp:ListItem>Segunda-feira</asp:ListItem>
                <asp:ListItem>Terça-feira</asp:ListItem>
                <asp:ListItem>Quarta-feira</asp:ListItem>
                <asp:ListItem>Quinta-feira</asp:ListItem>
                <asp:ListItem>Sexta-feira</asp:ListItem>
                <asp:ListItem>Sábado</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Enviar" />
            <br />
            <asp:label ID="Label2" runat="server" Text="Dias selecionados: "></asp:label>
        </div>
    </form>
</body>
</html>
