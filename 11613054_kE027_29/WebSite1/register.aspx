<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        width: 497px;
        text-align: right;
    }
    .auto-style7 {
        width: 497px;
        text-align: right;
        height: 29px;
    }
    .auto-style8 {
        height: 29px;
    }
    .auto-style9 {
        height: 29px;
        width: 296px;
    }
    .auto-style10 {
        width: 296px;
    }
        .auto-style11 {
            width: 497px;
            text-align: right;
            height: 38px;
        }
        .auto-style12 {
            width: 296px;
            height: 38px;
        }
        .auto-style13 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style7">Username</td>
        <td class="auto-style9">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="username is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Email</td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="email is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Password</td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Confirm Password</td>
        <td class="auto-style10">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both password should be same" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Country</td>
        <td class="auto-style9">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="168px">
                <asp:ListItem>Select country</asp:ListItem>
                <asp:ListItem>usa</asp:ListItem>
                <asp:ListItem>uk</asp:ListItem>
                <asp:ListItem>germany</asp:ListItem>
                <asp:ListItem>india</asp:ListItem>
                <asp:ListItem>pakistan</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="select country name" ForeColor="Red" InitialValue="select country"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"></td>
        <td class="auto-style12">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="Reset1" type="reset" value="reset" /></td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

