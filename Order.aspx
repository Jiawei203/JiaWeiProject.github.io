<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="MyFood_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="nav-justified" style="height: 3816px; width: 99%;">
        <caption>
        </caption>
        <tr>
            <td colspan="4" style="text-align: center; height: 288px;">
                <img alt="" class="auto-style1" src="../image/logo.23b30143158.w640.jpg" style="height: 220px; width: 320px;" /></td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; background-color: #808080; height: 75px;"><asp:Label ID="Label1" runat="server" Font-Size="20pt" Font-Underline="True" Text="Ordering Form" ForeColor="Lime" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #FFFF99; height: 57px;">
                &nbsp;
                <asp:Label runat="server" Font-Bold="True" Font-Size="15pt" Text="Name:"></asp:Label>
            </td>
            <td style="background-color: #FFFF99; height: 57px;">
                <asp:TextBox ID="txtName" runat="server" Height="50px" Rows="100" Width="300px"></asp:TextBox>
       </td>
            <td style="background-color: #FFFF99; height: 57px;">
                <asp:RequiredFieldValidator ID="vblName" runat="server" ControlToValidate="txtName" EnableClientScript="False" ErrorMessage="Please enter Name" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #FFFF99;">
                &nbsp;
                <asp:Label runat="server" Font-Bold="True" Font-Size="15pt" Text="Phone Number:"></asp:Label>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:TextBox ID="txtPhoneNum" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:RequiredFieldValidator ID="vdlPhoneNum" runat="server" ControlToValidate="txtPhoneNum" EnableClientScript="False" ErrorMessage="Please enter Phone Number" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #FFFF99;">
                &nbsp;
                <asp:Label runat="server" Font-Bold="True" Font-Size="15pt" Text="Email:"></asp:Label>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:TextBox ID="txtEmail" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:RegularExpressionValidator ID="vdlEmail" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="This email is missing the @ symbol" Font-Size="12pt" ForeColor="Red" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color: #FFFF99;">
                &nbsp;
                <asp:Label runat="server" Font-Bold="True" Font-Size="15pt" Text="Email (Retype):"></asp:Label>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:TextBox ID="txtEmailRetype" runat="server" Height="50px" Width="300px"></asp:TextBox>
            </td>
            <td style="background-color: #FFFF99;">
                <asp:CompareValidator ID="vdlEmailRetype" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailRetype" EnableClientScript="False" ErrorMessage="Your email does not match" Font-Size="12pt" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-size: large; color: #00FF00; text-align: center; text-decoration: underline; background-color: #808080; height: 50px;">
                <h2 id="#Soup" style="font-size: x-large">Soup Base</h2>
            </td>
        </tr>
        <tr>
            <td style="width: 610px; text-align: center; height: 625px;">
                <img alt="" src="../image/chicken.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbChciken" runat="server" Font-Size="12pt" Text="Chicken Soup ($14.00)" />
                <br />
                <br />
                <img alt="" src="../image/sichuan%20pic.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbSichuan" runat="server" Font-Size="12pt" Text="Sichuan Pickles Soup ($9.00)" />
            </td>
            <td style="width: 610px; text-align: center; height: 625px;">
                <img alt="" src="../image/locallaksa.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbLaksa" runat="server" Font-Size="12pt" Text="Local Laksa Soup($7.00)" />
                <br />
                <br />
                <img alt="" src="../image/SichuanSpicy.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbSichuanSpicy" runat="server" Font-Size="12pt" Text="Sichuan Spicy Soup ($12.00)" />
            </td>
            <td style="width: 610px; text-align: center; height: 625px;">
                <img alt="" src="../image/Mushroom%20s.jpg" style="width: 230px; height: 230px; margin-left: 0px;" /><br />
                <asp:CheckBox ID="cbMushroon" runat="server" Font-Size="12pt" Text="Mushroon Soup ($7.00)" />
                <br />
                <br />
                <img alt="" src="../image/threeDelica.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbThreeSoup" runat="server" Font-Size="12pt" Text="Three Delicacy Soup ($9.00)" />
            </td>
            <td style="width: 610px; text-align: center; height: 625px;">
                <img alt="" src="../image/seafood.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbSeafood" runat="server" Font-Size="12pt" Text="Seafood Soup ($8.00)" />
                <br />
                <br />
                <img alt="" src="../image/tomato.jpg" style="width: 230px; height: 230px" /><br />
                <asp:CheckBox ID="cbTomato" runat="server" Font-Size="12pt" Text="Tomato Soup ($10.00)" />
            </td>
        </tr>
        <tr>
             <td colspan="4" id="#Seaso" style="font-size: large; color: #00FF00; text-align: center; text-decoration: underline; background-color: #808080; height: 60px;">
                 <asp:Label ID="Label3" runat="server" Text="Seasoning" Font-Bold="True"></asp:Label>
             </td> 
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; height: 400px;">
                <img alt="" src="../image/sauce.png" style="width: 580px; height: 390px" /></td>
            <td colspan="2" style="height: 400px">
                <asp:ListBox ID="lbSauce" runat="server" Font-Size="12pt">
                    <asp:ListItem>Haidilao Sauce ($4.00)</asp:ListItem>
                    <asp:ListItem>Spicy Sauce ($4.00)</asp:ListItem>
                    <asp:ListItem>Seafood Sauce ($4.00)</asp:ListItem>
                    <asp:ListItem>Sesame Oil Sauce ($4.00)</asp:ListItem>
                    <asp:ListItem>Sesame Sauce ($4.00)</asp:ListItem>
                    <asp:ListItem>Dry Chili ($4.00)</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center; height: 48px; font-size: medium;">
                <a href="#" id="scrollToTop0" style="display: inline; color: cyan;"><u>Back To Top</u></a>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; background-color: #808080; height: 60px;" colspan="4">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="True" ForeColor="Lime" Text="Meat balls &amp; mashed meat"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 520px;" colspan="2">
                &nbsp;&nbsp;
                <table class="nav-justified" style="height: 430px; width: 85%;">
                    <tr>
                        <td style="text-align: center; width: 320px;" class="modal-sm">
                            <img alt="" src="../image%202/Signature.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label8" runat="server" Text="Signature Mashed Shrimpwah" Font-Size="7pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; width: 320px;" class="modal-sm">
                            <img alt="" src="../image%202/Beefch.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label9" runat="server" Text="Beef Cheese Ball" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; width: 320px;" class="modal-sm">
                            <img alt="" src="../image%202/handmade.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label10" runat="server" Text="Handmade Cuttle Fish Cakes" Font-Size="8pt" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 21px; width: 320px;"></td>
                        <td style="width: 320px; height: 21px;"></td>
                        <td style="height: 21px; width: 320px;"></td>
                    </tr>
                    <tr>
                        <td style="text-align: center; height: 171px; width: 320px;">
                            <img alt="" src="../image%202/cuttlefish.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label11" runat="server" Text="Cuttlefish Cakes" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; height: 171px; width: 320px;">
                            <img alt="" src="../image%202/fortune.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label12" runat="server" Text=" Fortune Bag" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; height: 171px; width: 320px;">
                            <img alt="" src="../image%202/pork.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label13" runat="server" Text="Pork and Corn Mixed Meatball" Font-Size="7pt" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 320px" class="modal-sm">&nbsp;</td>
                        <td style="width: 320px" class="modal-sm">&nbsp;</td>
                        <td style="width: 320px" class="modal-sm">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;
                </td>
            <td style="height: 520px;" colspan="2">
            &nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:RadioButtonList ID="rblMeat" runat="server" Font-Size="12pt" Width="339px">
                    <asp:ListItem>Signature Mashed Shrimpwah ($23.00)</asp:ListItem>
                    <asp:ListItem>Beef Cheese Ball ($15.00)</asp:ListItem>
                    <asp:ListItem>Handmade Cuttle Fish Cakes ($15.00)</asp:ListItem>
                    <asp:ListItem>Cuttlefish Cakes ($15.00)</asp:ListItem>
                    <asp:ListItem>Fortune Bag ($20.00)</asp:ListItem>
                    <asp:ListItem>Pork and Corn Mixed Meatball ($9.00)</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Size="15pt" Text="Quantity:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="txtQuantity1" runat="server" Height="40px" Width="170px" style="margin-top: 0"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="errorMsg" runat="server" ControlToValidate="txtQuantity1" EnableClientScript="False" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                </td>
        </tr>
        <tr>
            <td style="height: 60px; background-color: #808080; text-align: center;" colspan="4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="15pt" Font-Underline="True" ForeColor="Lime" Text="Classic Hot Pot Dishes"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="height: 520px; text-align: center;" colspan="2">
                <table class="nav-justified" style="height: 430px; width: 85%;">
                    <tr>
                        <td style="text-align: center; width: 323px;">
                            <img alt="" src="../image%203/crabs.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label14" runat="server" Text="Crab Sticks" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; width: 320px;" class="modal-sm">
                            <img alt="" src="../image%203/minicheese.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label15" runat="server" Text="Mini Sausages" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <img alt="" src="../image%203/fishroe.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label16" runat="server" Text="Fish Roe Stuffed Beancurd" Font-Size="8pt" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 21px; width: 323px;"></td>
                        <td style="width: 320px; height: 21px;"></td>
                        <td style="height: 21px"></td>
                    </tr>
                    <tr>
                        <td style="text-align: center; height: 171px; width: 323px;">
                            <img alt="" src="../image%203/luncheon.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label17" runat="server" Text="Luncheon Meat" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; height: 171px; width: 320px;">
                            <img alt="" src="../image%203/fishba.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label18" runat="server" Text="Fish Balls" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="text-align: center; height: 171px;">
                            <img alt="" src="../image%203/Project.jpg" style="width: 150px; height: 150px" /><br />
                            <asp:Label ID="Label19" runat="server" Text="Mini cheese sausages" Font-Size="9pt" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 320px">&nbsp;</td>
                        <td style="width: 320px" class="modal-sm">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </td>
            <td style="height: 520px;" colspan="2">
                <asp:RadioButtonList ID="rblDishes" runat="server" Font-Size="12pt" Width="289px">
                    <asp:ListItem>Crab Sticks ($3.00)</asp:ListItem>
                    <asp:ListItem>Mini Sausages ($6.00)</asp:ListItem>
                    <asp:ListItem>Fish Roe Stuffed Beancurd ($4.00)</asp:ListItem>
                    <asp:ListItem>Luncheon Meat ($5.00)</asp:ListItem>
                    <asp:ListItem>Fish Balls ($4.00)</asp:ListItem>
                    <asp:ListItem>Mini cheese sausages ($8.00)</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Quantity:"></asp:Label>
            &nbsp;
                <asp:TextBox ID="txtQuantity2" runat="server" Height="40px" Width="170px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="errorMsg1" runat="server" ControlToValidate="txtQuantity2" EnableClientScript="False" Font-Size="12pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                </td>
        </tr>
        <tr>
            <td style="text-align: center; height: 75px; background-color: #808080;" colspan="4">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="20pt" Font-Underline="True" ForeColor="Lime" Text="Marine products"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 540px; height: 19px;">
                <img alt="" src="../image%205/babysqu.jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label21" runat="server" Text="Baby Squid" Font-Size="15pt"></asp:Label>
                <br />
                <br />
                <img alt="" src="../image%205/image%20(1).jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label24" runat="server" Text="Super Meat Crab" Font-Size="15pt"></asp:Label>
            </td>
            <td style="width: 610px; height: 19px;">
                <img alt="" src="../image%205/boston.jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label22" runat="server" Text="Boston Baby Lobster" Font-Size="15pt"></asp:Label>
                <br />
                <br />
                <img alt="" src="../image%205/sea%20.jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label25" runat="server" Font-Size="15pt" Text="Sea Prawns"></asp:Label>
            </td>
            <td style="width: 540px; height: 19px;">
                <img alt="" src="../image%205/cod%20fillet.jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label23" runat="server" Font-Size="15pt" Text="Cod Fillet "></asp:Label>
                <br />
                <br />
                <img alt="" src="../image%205/seafood.jpg" style="width: 250px; height: 250px" /><br />
                <asp:Label ID="Label26" runat="server" Font-Size="15pt" Text="Seafood Platter"></asp:Label>
            </td>
            <td style="width: 540px; height: 19px;">
                <asp:DropDownList ID="ddlMarine" runat="server" Font-Size="15pt" OnSelectedIndexChanged="ddlMarine_SelectedIndexChanged">
                    <asp:ListItem> Baby Squid ($13.00)</asp:ListItem>
                    <asp:ListItem> Boston Baby Lobster ($60.00)</asp:ListItem>
                    <asp:ListItem>Cod Fillet ($23.00)</asp:ListItem>
                    <asp:ListItem>Super Meat Crab ($69.00)</asp:ListItem>
                    <asp:ListItem>Sea Prawns ($17.00)</asp:ListItem>
                    <asp:ListItem>Seafood Platter ($29.00)</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 540px">&nbsp;</td>
            <td style="width: 610px">&nbsp;</td>
            <td style="width: 540px">&nbsp;</td>
            <td style="width: 540px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 540px">
                <asp:Button ID="btnSubmit" runat="server" Font-Size="12pt" Text="Submit" Width="175px" OnClick="btnSubmit_Click" />
            </td>
            <td colspan="3">
                <asp:Button ID="btnClear" runat="server" Font-Size="12pt" Text="Clear" Width="150px" OnClick="btnClear_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 540px">&nbsp;</td>
            <td style="width: 610px">&nbsp;</td>
            <td style="width: 540px">&nbsp;</td>
            <td style="width: 610px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Label ID="lblAnswer" runat="server" Font-Size="15pt"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

