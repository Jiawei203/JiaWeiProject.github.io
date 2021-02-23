<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="MyFood_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified" style="height: 198px; width: 104%;">
    <tr>
        <td colspan="7" style="text-align: center; background-color: #808080;">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="15pt" ForeColor="Red" Text="Feedback Form"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-indent: 250px; font-size: large; width: 673px;" colspan="2">Name:</td>
        <td colspan="5">
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; text-indent: 250px; height: 48px; width: 673px;" colspan="2">Email:</td>
        <td style="height: 48px" colspan="5">
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="vdlEmail" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="This email is missing the @ symbol" Font-Size="12pt" ForeColor="Red" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; text-indent: 200px; width: 673px;" colspan="2">Feedback Rating:</td>
        <td colspan="5">
            <asp:DropDownList ID="ddlRate" runat="server">
                <asp:ListItem>A - Excellent</asp:ListItem>
                <asp:ListItem>B - Good</asp:ListItem>
                <asp:ListItem> C – Average</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="7" style="font-size: large; text-indent: 250px; height: 24px;"></td>
    </tr>
    <tr>
        <td style="font-size: large; height: 25px; width: 673px;" colspan="2"></td>
        <td style="font-size: large; width: 206px; height: 25px;" class="modal-sm">Strongly Agreen</td>
        <td style="font-size: large; width: 156px; height: 25px;">Agree</td>
        <td style="font-size: large; width: 179px; height: 25px;">Neutral</td>
        <td style="font-size: large; width: 130px; height: 25px;" class="modal-sm">Disagree</td>
        <td style="font-size: large; width: 200px; height: 25px;" class="modal-sm">Strongly Disagree</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 25px; width: 673px;" colspan="2">How would you rate the quality of the<span>&nbsp;</span><b>food</b><span>&nbsp;</span>at our restaurant?</td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed1" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; height: 25px; width: 673px;" colspan="2">
            <p>
                How were the drinks and beverages?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed2" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 673px; height: 25px;" colspan="2">
            <p>
                Do you feel that the menu has something to satisfy everyone&#39;s taste buds?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed3" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 673px; height: 25px;" colspan="2">
            <p>
                How do you rate the variety of options on the menu?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed4" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 673px; height: 25px;" colspan="2">
            <p>
                If you have a dietary restriction, do you feel that you were well supported today?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed5" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 673px; height: 25px;" colspan="2">
            <p>
                How would you rate the overall hygiene and cleanliness of the restaurant?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="5">
            <asp:RadioButtonList ID="rblfeed6" runat="server" RepeatDirection="Horizontal" Width="853px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td style="font-size: large; width: 673px; height: 25px;" colspan="2">&nbsp;</td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 25px;">&nbsp;</td>
        <td style="text-align: center; height: 25px;">&nbsp;</td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 25px; width: 673px;" colspan="2">
            <p>
                Is there anything that you feel should be on the menu list?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="3">
            <asp:TextBox ID="txtbox1" runat="server" Width="496px"></asp:TextBox>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 25px; width: 673px;" colspan="2">
            <p>
                Did the food arrive on time?</p>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm" colspan="3">
            <asp:TextBox ID="txtbox2" runat="server" Width="496px"></asp:TextBox>
        </td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 25px;" class="modal-sm">&nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 16px; width: 673px;" colspan="2">
            <p>
                Did you face any issues with any service of the restaurant?</p>
        </td>
        <td style="text-align: center; height: 16px;" class="modal-sm" colspan="3">
            <asp:TextBox ID="txtbox3" runat="server" Width="496px"></asp:TextBox>
        </td>
        <td style="text-align: center; height: 16px;" class="modal-sm"></td>
        <td style="text-align: center; height: 16px;" class="modal-sm"></td>
    </tr>
    <tr>
        <td style="font-size: large; height: 16px; width: 673px;" colspan="2">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm" colspan="3">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm">&nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 16px; width: 673px;">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit Feedback" Width="165px" />
        </td>
        <td style="font-size: large; height: 16px; width: 673px;">
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </td>
        <td style="text-align: center; height: 16px;" class="modal-sm" colspan="3"></td>
        <td style="text-align: center; height: 16px;" class="modal-sm"></td>
        <td style="text-align: center; height: 16px;" class="modal-sm"></td>
    </tr>
    <tr>
        <td style="font-size: large; height: 16px; width: 673px;">&nbsp;</td>
        <td style="font-size: large; height: 16px; width: 673px;">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm" colspan="3">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm">&nbsp;</td>
        <td style="text-align: center; height: 16px;" class="modal-sm">&nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: large; height: 16px; " colspan="7">
            <asp:Label ID="txtOutput" runat="server"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>

