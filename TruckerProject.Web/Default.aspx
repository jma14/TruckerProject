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
            <asp:Button ID="AddTrucker" runat="server" OnClick="AddTrucker_Click" Text="Add Trucker" />

        

            <asp:GridView ID="TruckersGridView" runat="server" CssClass="table table-hover table-bordered table-responsive" GridLines="None" AutoGenerateColumns="False" UseAccessibleHeader="true">
                <Columns>
                    <asp:BoundField DataField="TruckerID" HeaderText="TruckerID" Visible="false" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="CityStateZip" HeaderText="City/State/Zip" />
                    <asp:BoundField DataField="LicenseNumber" HeaderText="License Number" />
                    <asp:BoundField DataField="ExpirationDate" HeaderText="Expiration Date" DataFormatString="{0:M/dd/yyyy}" />
                    <asp:TemplateField HeaderText="ClassA" SortExpression="ClassA">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassA").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ClassB" SortExpression="ClassB">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassB").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ClassC" SortExpression="ClassC">
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
