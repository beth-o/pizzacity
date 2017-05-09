<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ordernow.aspx.vb" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

         <table class="nav-justified">
            <tr>
                <td class="text-left" ><h2>Place Your Order Here&nbsp;</h2>
                    
                    <h4>Fresh Ingredients | Locally Sourced and Organic | Hand Tossed Crust</h4>
        <p>Call us at <a href="tel:1-520-555-7890" style="color: #000000">1-520-555-7890</a> - Or complete the order form below for fast, free delivery within 45 minutes or your pizza is half-off!</p>
        
            
   
                </td>
                <td style="width: auto">
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" ImageUrl="pizzaSmall.jpg" Width="350px" />
                </td>
            </tr>
        </table>
    <br />
      <table style="font-size:medium; width: 403px;" align="center">
        <th style =" background-color:gainsboro; font-size: small;" "18px" colspan ="2" style="width: 30%">Pizza Size</td> <span style="font-size: x-small">(includes cheese + 2 toppings)</span></th>
            <tr style="font-size: small"><td style="width: 283px">Small</td><td style="width: 116px" class="text-right">$8.99</td></tr>
        <tr style="font-size: small"><td style="width: 283px">Medium</td><td style="width: 116px" class="text-right">$12.99</td></tr>
        <tr style="font-size: small"><td style="width: 283px; height: 26px">Large</td><td style="width: 116px; height: 26px;" class="text-right">$15.99</td></tr>
        <tr style="font-size: small"><td style="width: 283px">Extra Large</td><td style="width: 116px" class="text-right">$18.99</td></tr>
        <tr style="font-size: small"><td style="width: 283px">Each Extra Topping (Cheese Included)</td><td style="width: 116px" class="text-right">$0.99</td></tr>

    </table>&nbsp;<p></p>
         <table border-style: solid; border-color: #ADADAD; border="0" align="center" >
                <tr>
                    <td class="text-center" colspan="2" style="font-size: large; height: 34px;">Order Form </td>
                </tr >
                <tr>
                    <td class="text-right" style="height: 22px; width: 251px" itemid="lblName">Name:</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" BackColor="Red" ControlToValidate="txtName" ErrorMessage="Name cannot be blank."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblStreet">Street Address:</td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="Red" ControlToValidate="txtStreet" ErrorMessage="Street cannot be blank."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblUnitNo">Apartment or Unit No.:</td>
                    <td>
                        <asp:TextBox ID="txtUnitNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px; height: 22px;" id="lblZip" itemid="lblZip">Zip (our delivery area: 85xxx to 86xxx):</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtZip" runat="server" AutoPostBack="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvZip" runat="server" BackColor="Red" ControlToValidate="txtZip" ErrorMessage="Zip Cannot be Blank"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtZip" ErrorMessage="Not a zip code." ValidationExpression="\d{5}(-\d{4})?" BackColor="Red"></asp:RegularExpressionValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtZip" ErrorMessage="Zip out of range." MaximumValue="86999" MinimumValue="85000" Type="Integer" BackColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px; height: 22px;" itemid="lblPhone">Phone Number (xxx-xxx-xxxx):</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="Red" ControlToValidate="txtPhone" ErrorMessage="Invalid phone number." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" BackColor="Red" ControlToValidate="txtPhone" ErrorMessage="Phone cannot be blank."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px; height: 22px;" itemid="lblEmail">Email:</td>
                    <td style="height: 22px">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                            ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BackColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" BackColor="Red" ControlToValidate="txtEmail" ErrorMessage="Email cannot be blank."></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblSizeOfPizza">Size of Pizza:</td>
                    <td>
                        <asp:DropDownList ID="ddlSizeOfPizza" runat="server" >
                            <asp:ListItem Value="Small">Small</asp:ListItem>
                            <asp:ListItem Value="Medium">Medium</asp:ListItem>
                            <asp:ListItem Value="Large">Large</asp:ListItem>
                            <asp:ListItem Value="Extra Large">Extra Large</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblTopping1">Topping One:</td>
                    <td>
                        <asp:DropDownList ID="ddlTopping1" runat="server">
                            <asp:ListItem>Extra Cheese</asp:ListItem>
                            <asp:ListItem>Tomato</asp:ListItem>
                            <asp:ListItem>Onion</asp:ListItem>
                            <asp:ListItem>Olives</asp:ListItem>
                            <asp:ListItem>Mushrooms</asp:ListItem>
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Sausage</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblTopping2">Topping Two:</td>
                    <td id="DropDownListTopping2">
                        <asp:DropDownList ID="ddlTopping2" runat="server">
                            <asp:ListItem>Extra Cheese</asp:ListItem>
                            <asp:ListItem>Tomato</asp:ListItem>
                            <asp:ListItem>Onion</asp:ListItem>
                            <asp:ListItem>Olives</asp:ListItem>
                            <asp:ListItem>Mushrooms</asp:ListItem>
                            <asp:ListItem>Pepperoni</asp:ListItem>
                            <asp:ListItem>Sausage</asp:ListItem>
                            <asp:ListItem>No Topping</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblExtraTopping1">Extra Topping 1:</td>
                    <td>
                        <asp:DropDownList ID="ddlExtraTopping1" runat="server">
                            <asp:ListItem Value="None">None</asp:ListItem>
                            <asp:ListItem Value="Extra Cheese">Extra Cheese</asp:ListItem>
                            <asp:ListItem Value=Tomato>Tomato</asp:ListItem>
                            <asp:ListItem Value=Onion>Onion</asp:ListItem>
                            <asp:ListItem Value=Olives>Olives</asp:ListItem>
                            <asp:ListItem Value=Mushrooms>Mushrooms</asp:ListItem>
                            <asp:ListItem Value=Pepperoni>Pepperoni</asp:ListItem>
                            <asp:ListItem Value=Sausage>Sausage</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblExtraTopping2">Extra Topping 2:</td>
                    <td>
                        <asp:DropDownList ID="ddlExtraTopping2" runat="server">
                            <asp:ListItem Value="None">None</asp:ListItem>
                            <asp:ListItem Value="Extra Cheese">Extra Cheese</asp:ListItem>
                            <asp:ListItem Value="Tomato">Tomato</asp:ListItem>
                            <asp:ListItem Value="Onion">Onion</asp:ListItem>
                            <asp:ListItem Value="Olives">Olives</asp:ListItem>
                            <asp:ListItem Value="Mushrooms">Mushrooms</asp:ListItem>
                            <asp:ListItem Value="Pepperoni">Pepperoni</asp:ListItem>
                            <asp:ListItem Value="Sausage">Sausage</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-right" style="width: 251px" itemid="lblExtraTopping3">Extra Topping 3:</td>
                    <td>
                        <asp:DropDownList ID="ddlExtraTopping3" runat="server">
                            <asp:ListItem Value="None">None</asp:ListItem>
                            <asp:ListItem Value="Extra Cheese">Extra Cheese</asp:ListItem>
                            <asp:ListItem Value="Tomato">Tomato</asp:ListItem>
                            <asp:ListItem Value="Onion">Onion</asp:ListItem>
                            <asp:ListItem Value="Olives">Olives</asp:ListItem>
                            <asp:ListItem Value="Mushrooms">Mushrooms</asp:ListItem>
                            <asp:ListItem Value="Pepperoni">Pepperoni</asp:ListItem>
                            <asp:ListItem Value="Sausage">Sausage</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>


  
        <h5 class="text-center"><strong>
            <asp:Button ID="btnSubmit" runat="server" style="font-weight: bold" Text="Submit Order"/>
            &nbsp;<asp:Button ID="btnClear" runat="server" style="font-weight: bold" Text="Clear Form" />
            </strong></h5>
</asp:Content>
