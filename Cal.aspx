<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalculatorWebForm._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #E7F5F6;
          /* background-image: url('https://media.istockphoto.com/id/1419844586/vector/stem-blue-horizontal-frame-vector-education-bright-illustration.jpg?s=612x612&w=0&k=20&c=-A1eYLYulujNsiM26lkVy7qMT_Hp82N5EtKHSFRmigk=');*/ 
           background-image: url('https://c8.alamy.com/comp/EMD5HM/calculator-a-background-EMD5HM.jpg');
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .calculator {
            background-color: #C8C8C8;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .calc-button {
            width: 50px;
            height: 50px;
            font-size: 35px;
            border: none;
            font-style:italic;
            font-family:Monospace;
        }

        .display {
            font-size: 20px;
            text-align: right;
            margin-bottom: 10px;
            padding-right: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 0px;
            font-style:italic;
            font-family:Monospace;
        }

        table 
        {
            border-collapse: collapse;
        }

        td 
        {
            padding: 0;
        }

    </style>

</head>
<body>
     

    <form id="form1" runat="server">
        <div class="calculator" background-image ="">
            <asp:TextBox ID="Display" runat="server" CssClass="display" ReadOnly="True" BackColor="#669999" Height="36px" Width="188px"></asp:TextBox>
            <table>
                <tr>
                    <td><asp:Button ID="btn1" runat="server" Text="7" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn2" runat="server" Text="8" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn3" runat="server" Text="9" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btnAdd" runat="server" Text="+" CssClass="calc-button" OnClick="Operator_Click" BackColor="#48B9C2" /></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn4" runat="server" Text="4" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn5" runat="server" Text="5" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn6" runat="server" Text="6" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="calc-button" OnClick="Operator_Click" BackColor="#48B9C2" /></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn7" runat="server" Text="1" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn8" runat="server" Text="2" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btn9" runat="server" Text="3" CssClass="calc-button" OnClick="Number_Click" BackColor="#DCA6CB" /></td>
                    <td><asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="calc-button" OnClick="Operator_Click" BackColor="#48B9C2" /></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn0" runat="server" Text="0" CssClass="calc-button" OnClick="Number_Click" BackColor="#6D9FA3" /></td>
                    <td><asp:Button ID="btnClear" runat="server" Text="C" CssClass="calc-button" OnClick="Clear_Click" BackColor="#F44B36" /></td>
                    <td><asp:Button ID="btnEquals" runat="server" Text="=" CssClass="calc-button" OnClick="Equals_Click" BackColor="#CCE6E8" /></td>
                    <td><asp:Button ID="btnDivide" runat="server" Text="/" CssClass="calc-button" OnClick="Operator_Click" BackColor="#48B9C2" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
