<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgendaDeDisponibilidadeSemanal.aspx.cs" Inherits="Agenda.AgendaDeDisponibilidadeSemanal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agenda de disponibilidade semanal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class = "container_formulario">
            <asp:label ID="LblDiasDaSemana" runat="server" Text="Selecione os dias da semana que você estará disponível para trabalhar:"></asp:label>
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
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" />
            <br />
            <asp:label ID="lblMensagem" runat="server" Text="Dias selecionados: "></asp:label>
        </div>
    </form>
    <script type = "text/javascript">
        // Pega o botão de enviar e adiciona um evento de clique
        document.getElementById('btnEnviar').addEventListener('click', function (e) {
            // Pega a lista de checkbox e todos os inputs dentro dela (os checkboxes)
            var checkBoxList = document.getElementById('CheckBoxList1');
            var inputs = checkBoxList.getElementsByTagName('input');
            var selected = false;

            // Verifica se pelo menos um checkbox foi selecionado
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].checked) {
                    selected = true;
                    break;
                }
            }
            // Se nenhum checkbox foi selecionado, mostra um alerta e previne o envio do formulário
            if (!selected) {
                e.preventDefault();
                alert('Por favor, selecione pelo menos um dia da semana.');
            }
        });

    </script>
    

    <style>
body {
    font-family: 'Segoe UI', sans-serif;
    background-color: #fff;
    padding: 20px;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px #0026ff;
}

#LblDiasDaSemana {
    font-size: 18px;
    color: #000;
}

#CheckBoxList1 {
    margin-top: 20px;
}

#CheckBoxList1 input[type="checkbox"] {
    margin-right: 5px;
}

#btnEnviar {
    display: block;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #000;
    color: #fff;
    border-radius: 5px;
    border: none;
}

#btnEnviar:hover {
    background-color: #0026ff;
}

#lblMensagem {
    margin-top: 20px;
}

    </style>
</body>
</html>
