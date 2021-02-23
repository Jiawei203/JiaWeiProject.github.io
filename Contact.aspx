<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="MyFood_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified" style="height: 175px; margin-bottom: 0px;">
        <tr>
            <td style="text-align: justify; height: 71px; text-indent: 30px;" aria-orientation="horizontal">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" Font-Underline="True" Text="Contact us"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <ul style="text-align: justify">
                    <li>Phone Number:+65 90679607</li>
                    <li>Fax Number:+65 65655567<br /></li>
                    <li>Address: 103 Irrawaddy Rd, #06-01/02 Royal Square, Singapore 329566</li>
                    <li>Email:  <a href="mailto:ir@haidilao.com">ir@haidilao.com </a>
                        <br /></li>
                </ul>
            </td>
        </tr>
        </table>
</asp:Content>

