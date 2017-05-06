<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TruckerManagement.aspx.cs" Inherits="TruckerProject.Web.TruckerManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="page-header">
                <h1>Add New Trucker</h1>
            </div>
           <div class="form-group">
                <label>First Name:</label>
                <asp:TextBox ID="firstNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>Last Name:</label>
                <asp:TextBox ID="lastNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>City:</label>
                <asp:TextBox ID="cityTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>State:</label>
                <asp:DropDownList ID="stateDropDownList" runat="server" CssClass="form-control">
                    <asp:ListItem Text="AL" Value="AL" Selected="True"/>
                    <asp:ListItem Text="CT" Value="CT" />
                    <asp:ListItem Text="IN" Value="IN" />
                    <asp:ListItem Text="MI" Value="MI" />
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label>Zip:</label>
                <asp:TextBox ID="zipTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>License Number:</label>
                <asp:TextBox ID="licenseNumberTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <div class="form-group">
                <label>Expiration Date (DD/MM/YY):</label>
                <asp:TextBox ID="expirationDateTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>

            <div class="checkbox"><label><asp:CheckBox ID="classACheckBox" runat="server" AutoPostBack="false"/>Class A</label></div>
            <div class="checkbox"><label><asp:CheckBox ID="classBCheckBox" runat="server" AutoPostBack="false"/>Class B</label></div>
            <div class="checkbox"><label><asp:CheckBox ID="classCCheckBox" runat="server" AutoPostBack="false"/>Class C</label></div>

            <br />
            <br />

            <asp:Button Text="Add New trucker" ID="newTrucker" runat="server" CssClass="btn btn-lg btn-primary" OnClick="newTrucker_Click"/>
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.1.1.min.js"></script>


</body>
</html>
