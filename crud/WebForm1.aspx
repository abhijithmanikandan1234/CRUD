<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crud.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div style="font-size:x-large" align="center" >Student Info Manage Form</div>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>Student ID</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="233px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button5_Click" Text="Get" Width="101px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Student Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="233px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Address</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Kerala</asp:ListItem>
                                <asp:ListItem>UP</asp:ListItem>
                                <asp:ListItem>Delhi</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Age</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="233px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>Contact</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="233px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Insert" Width="101px" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="101px" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" OnClientClick="return confirm('are you sure to delete?');" Text="Delete" Width="101px" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Search" Width="101px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Width="445px">
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
