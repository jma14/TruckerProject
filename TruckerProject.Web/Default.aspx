<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruckerProject.Web.Default" %>

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
                <h1>Trucker Information</h1>
            </div>

            <asp:Button ID="AddTrucker" CssClass="btn btn-primary btn-lg" runat="server" OnClick="AddTrucker_Click" Text="Add Trucker" />

            <br />
            <br />

            <asp:GridView ID="TruckersGridView" runat="server" CssClass="table table-bordered table-responsive text-center" AlternatingRowStyle-BackColor="SteelBlue" GridLines="Both" AutoGenerateColumns="False" UseAccessibleHeader="true" OnRowCommand="TruckersGridView_RowCommand" >
                <Columns>
                    <asp:ButtonField Text="<i class='glyphicon glyphicon-pencil'></i> Edit" CommandName="Edit" ControlStyle-CssClass="btn btn-lg bg-warning"></asp:ButtonField>
                    <asp:ButtonField Text="<i class='glyphicon glyphicon-remove'></i> Delete" CommandName="Remove" ControlStyle-CssClass="btn btn-lg bg-danger"></asp:ButtonField>
                    <asp:BoundField DataField="TruckerID" HeaderText="TruckerID" ControlStyle-CssClass="hide"/>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" />
                    <asp:BoundField DataField="LicenseNumber" HeaderText="License Number" />
                    <asp:BoundField DataField="ExpirationDate" HeaderText="Expiration Date" DataFormatString="{0:M/dd/yyyy}" />
                    <asp:TemplateField HeaderText="Class A" SortExpression="ClassA">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassA").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class B" SortExpression="ClassB">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassB").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class C" SortExpression="ClassC">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassC").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="cursor-pointer" />
            </asp:GridView>
        </div>
    </form>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
</body>
</html>
