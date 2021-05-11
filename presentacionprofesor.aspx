<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="presentacionprofesor.aspx.cs" Inherits="Instituto.formulario2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1192px;
            background-image: url('Resources/descarga.jpg');
        }
        .auto-style7 {
            width: 397px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
            text-align: center;
            width: 397px;
        }
        .auto-style11 {
            margin-left: 101px;
            margin-top: 3px;
        }
        .auto-style20 {
            margin-left: 90px;
        }
        .auto-style24 {
            margin-left: 100px;
        }
        .auto-style25 {
            margin-left: 101px;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style31 {
            text-align: left;
            width: 397px;
        }
        .auto-style32 {
            margin-left: 140px;
        }
        .auto-style33 {
            margin-left: 0px;
        }
        .auto-style36 {
            margin-left: 92px;
        }
        .auto-style47 {
            height: 29px;
            width: 397px;
        }
        .auto-style48 {
            height: 29px;
            width: 397px;
            text-align: center;
        }
        .auto-style49 {
            height: 32px;
            width: 396px;
        }
        .auto-style50 {
            height: 32px;
            width: 397px;
        }
        .auto-style54 {
            text-align: center;
            width: 397px;
        }
        .auto-style55 {
            height: 29px;
            width: 396px;
        }
        .auto-style56 {
            height: 19px;
            width: 396px;
        }
        .auto-style57 {
            height: 19px;
            width: 397px;
        }
        .auto-style58 {
            width: 396px;
            height: 26px;
        }
        .auto-style59 {
            width: 396px;
        }
        .auto-style60 {
            width: 397px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style50">&nbsp;</td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp; &nbsp;</td>
                <td class="auto-style60">
                    <p class="auto-style30">
                        <asp:Label ID="titulo1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="X-Large" ForeColor="White" Text="REGISTRO PROFESORES"></asp:Label>
                    </p>
                </td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Label ID="lblidprofesor1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="ID PROFESOR:"></asp:Label>
                </td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtidprofesor1" runat="server" CssClass="auto-style11"></asp:TextBox>
                </td>
                <td class="auto-style54">
                    <asp:Label ID="btnguardarb" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="IR A  TABLA ESTUDIANTE:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Label ID="lblnombre1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="NOMBRE:"></asp:Label>
                </td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtnombre1" runat="server" CssClass="auto-style25"></asp:TextBox>
                </td>
                <td class="auto-style31">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Label ID="lblapellido1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="APELLIDO:"></asp:Label>
                </td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtapellido1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="lblcelular1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="CELULAR:"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:TextBox ID="txtcelular1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style48">
                    <asp:Label ID="lblmateria" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="IR A TABLA MATERIA:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">
                    <asp:Label ID="lbledad1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="EDAD:"></asp:Label>
                </td>
                <td class="auto-style57">
                    <asp:TextBox ID="txtedad1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Label ID="lbldireccion1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="DIRECCIÓN:"></asp:Label>
                </td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtdireccion1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Label ID="lblcurso1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="CURSO:"></asp:Label>
                </td>
                <td class="auto-style60">
                    <asp:TextBox ID="txtcurso1" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    &nbsp;</td>
                <td class="auto-style60">
                    &nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style58">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White" Text="RESPUESTA:"></asp:Label>
                </td>
                <td class="auto-style8">&nbsp;
                    <asp:Label ID="lblrespuesta1" runat="server" Font-Bold="True" Font-Names="Bahnschrift Condensed" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnlimpiar1" runat="server" BackColor="Yellow" BorderColor="Yellow" CssClass="auto-style20" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" Height="30px" Text="LIMPIAR" Width="150px" OnClick="btnlimpiar1_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style59">
                    <asp:Button ID="guardar" runat="server" CssClass="auto-style32" OnClick="guardar_Click" Text="GUARDAR" BackColor="Lime" BorderColor="Lime" Font-Bold="True" Font-Names="Bahnschrift Light SemiCondensed" Height="30px" Width="150px" />
                </td>
                <td class="auto-style54">
                    <asp:Button ID="consultar" runat="server" CssClass="auto-style33" Text="CONSULTAR" BackColor="#00CCFF" BorderColor="#00CCFF" Font-Bold="True" Height="30px" OnClick="consultar_Click1" Width="150px"  />
                </td>
                <td class="auto-style60">
                    <asp:Button ID="eliminar" runat="server" CssClass="auto-style36" OnClick="eliminar_Click" Text="ELIMINAR" BackColor="Red" BorderColor="Red" Height="30px" Width="150px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
                <td class="auto-style60">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
