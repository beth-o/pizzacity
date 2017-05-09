<%@ Page Title="Pizza City Home" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Pizza City!&nbsp;&nbsp;<a href="ordernow.aspx" class="btn btn-primary btn-lg">Order Now &raquo;</a></h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="text-left">
            <asp:Image ID="pizza" runat="server" ImageAlign="Left" ImageUrl="pizza.jpg" Height="144px" Width="484px" />
        </p>
        <p class="lead" style="text-align: left">Vegetarian or Vegan, Organic Ingredients</p>
        <h5>Fresh Ingredients | Locally Sourced | Hand Tossed Crust</h5>
        <p>Call us at <a href="tel:1-520-555-7890" style="color: #000000">1-520-555-7890</a> </p>

    </div>

</asp:Content>
