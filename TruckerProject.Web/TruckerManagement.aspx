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

            <div class="form-group">
                <label>Licenses:</label>
                <asp:CheckBoxList ID="licenseCheckBoxList" runat="server" CssClass="checkbox-inline"></asp:CheckBoxList>
             </div>

            <br />
            <br />
            
            <asp:Button Text="Cancel" ID="backToDefaultPage" runat="server" CssClass="btn btn-lg btn-primary" OnClick="backToDefaultPage_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button Text="Add New Trucker" ID="newTrucker" runat="server" CssClass="btn btn-lg btn-primary" OnClick="newTrucker_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button Text="Update Trucker Info" ID="updateTrucker" runat="server" CssClass="btn btn-lg btn-primary" OnClick="updateTrucker_Click"/>

            
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.1.1.min.js"></script>


</body>
</html>
