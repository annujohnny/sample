<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="form1.WebForm1" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="useremail" runat="server" TextMode="Email" ValidateRequestMode="Disabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="useremail" ErrorMessage="email required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="useremail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;
        <asp:TextBox ID="userpassword" runat="server" TextMode="Password"></asp:TextBox>
    
    </div>
        <br />
        <asp:CheckBox ID="Persist" runat="server"  Text="Remember me" />
        <br />
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="sign in" />
        <br />
        &nbsp;<br />
        <asp:Label ID="Msg" runat="server"></asp:Label>
        <br />
 
  
    </form>
</body>
</html>
