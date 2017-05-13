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
                    <asp:ListItem Text="AL" Value="AL" />
                    <asp:ListItem Text="AK" Value="AK" />
                    <asp:ListItem Text="AZ" Value="AZ" />
                    <asp:ListItem Text="AR" Value="AR" />
                    <asp:ListItem Text="CA" Value="CA" />
                    <asp:ListItem Text="CO" Value="CO" />
                    <asp:ListItem Text="CT" Value="CT" />
                    <asp:ListItem Text="DE" Value="DE" />
                    <asp:ListItem Text="FL" Value="FL" />
                    <asp:ListItem Text="GA" Value="GA" />
                    <asp:ListItem Text="HI" Value="HI" />
                    <asp:ListItem Text="ID" Value="ID" />
                    <asp:ListItem Text="IL" Value="IL" />
                    <asp:ListItem Text="IN" Value="IN" />
                    <asp:ListItem Text="IA" Value="IA" />
                    <asp:ListItem Text="KS" Value="KS" />
                    <asp:ListItem Text="KY" Value="KY" />
                    <asp:ListItem Text="LA" Value="LA" />
                    <asp:ListItem Text="ME" Value="ME" />
                    <asp:ListItem Text="MD" Value="MD" />
                    <asp:ListItem Text="MA" Value="MA" />
                    <asp:ListItem Text="MI" Value="MI" />
                    <asp:ListItem Text="MN" Value="MN" />
                    <asp:ListItem Text="MS" Value="MS" />
                    <asp:ListItem Text="MO" Value="MO" />
                    <asp:ListItem Text="MT" Value="MT" />
                    <asp:ListItem Text="NE" Value="NE" />
                    <asp:ListItem Text="NV" Value="NV" />
                    <asp:ListItem Text="NH" Value="NH" />
                    <asp:ListItem Text="NJ" Value="NJ" />
                    <asp:ListItem Text="NM" Value="NM" />
                    <asp:ListItem Text="NY" Value="NY" />
                    <asp:ListItem Text="NC" Value="NC" />
                    <asp:ListItem Text="ND" Value="ND" />
                    <asp:ListItem Text="OH" Value="OH" />
                    <asp:ListItem Text="OK" Value="OK" />
                    <asp:ListItem Text="OR" Value="OR" />
                    <asp:ListItem Text="PA" Value="PA" />
                    <asp:ListItem Text="RI" Value="RI" />
                    <asp:ListItem Text="SC" Value="SC" />
                    <asp:ListItem Text="SD" Value="SD" />
                    <asp:ListItem Text="TN" Value="TN" />
                    <asp:ListItem Text="TX" Value="TX" />
                    <asp:ListItem Text="UT" Value="UT" />
                    <asp:ListItem Text="VT" Value="VT" />
                    <asp:ListItem Text="VA" Value="VA" />
                    <asp:ListItem Text="WA" Value="WA" />
                    <asp:ListItem Text="WV" Value="WV" />
                    <asp:ListItem Text="WI" Value="WI" />
                    <asp:ListItem Text="WY" Value="WY" />
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
                <label>License Type:</label>
                <asp:TextBox ID="licenseTypeTextBox" runat="server" CssClass="form-control"></asp:TextBox>
             </div>

            <br />
            <br />
            
            <asp:Button Text="Add New Trucker" ID="newTrucker" runat="server" CssClass="btn btn-lg btn-primary" OnClick="newTrucker_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button Text="Update Trucker Info" ID="updateTrucker" runat="server" CssClass="btn btn-lg btn-primary" OnClick="updateTrucker_Click"/>
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.1.1.min.js"></script>


</body>
</html>
