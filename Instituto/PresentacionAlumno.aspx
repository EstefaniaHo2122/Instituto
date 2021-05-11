<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PresentacionAlumno.aspx.cs" Inherits="Instituto.PresentacionAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-image: url('Resources/imgfondo.jpg');
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td id="titulo" class="auto-style4" colspan="3">
                        <asp:Label ID="titulo1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="MATRICULA ESTUDIANTES"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="txtidestudiante" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="ID ESTUDIANTE:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lblidestudiante" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" OnTextChanged="lblidestudiante_TextChanged" Height="22px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="txtidestudiante0" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="IR A TABLA PROFESOR:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="txtnombre" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="NOMBRE:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lblnombre" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnguardar1" runat="server" BackColor="#003300" BorderColor="#003300" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" ForeColor="White" Height="25px" OnClick="btnguardar_Click" Text="IR" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="txtapellido" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="APELLIDO:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="lblapellido" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="txtcelular" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="CELULAR:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lblcelular" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="txtidestudiante1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="IR A TABLA MATERIA:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="txtedad" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="EDAD:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="lbledad" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnguardar2" runat="server" BackColor="#003300" BorderColor="#003300" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" ForeColor="White" Height="25px" OnClick="btnguardar_Click" Text="IR" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="txtdireccion" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="DIRECCIÓN:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lbldireccion" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="txtbarrio" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="BARRIO:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="lblbarrio" runat="server" Font-Bold="True" Font-Names="Bahnschrift Light Condensed"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="RESPUESTA:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblrespuesta" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Condensed" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnlimpiar" runat="server" BackColor="Yellow" BorderColor="Yellow" Font-Bold="True" Font-Names="Bahnschrift Light SemiCondensed" Height="30px" OnClick="btnlimpiar_Click" Text="LIMPIAR" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnguardar" runat="server" BackColor="#66FF33" BorderColor="#99FF33" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" ForeColor="Black" Height="30px" OnClick="btnguardar_Click" Text="GUARDAR" Width="150px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btnconsultar" runat="server" BackColor="#00CCFF" BorderColor="#00CCFF" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" ForeColor="Black" Height="30px" OnClick="btnconsultar_Click" Text="CONSULTAR" Width="150px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="btneliminar" runat="server" BackColor="Red" BorderColor="Red" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" ForeColor="Black" Height="30px" OnClick="btneliminar_Click" Text="ELIMINAR" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
