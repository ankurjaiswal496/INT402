<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="developer.aspx.cs" Inherits="developer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 657px;
            text-align: right;
        }
        .auto-style8 {
            width: 657px;
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">LOGIN</td>
        </tr>
        <tr>
            <td class="auto-style8">Username</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Password</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="LOGIN" Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp; </td>
            <td class="auto-style10">&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register.aspx" style="text-align: justify">Create new account</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

