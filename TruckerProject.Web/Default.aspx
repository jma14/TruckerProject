<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruckerProject.Web.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="bg-info">

        <div class="container">
            <div class="page-header">
                <h1>Trucker Information</h1>
            </div>

            <asp:Button ID="AddTrucker" CssClass="btn btn-primary btn-lg" runat="server" OnClick="AddTrucker_Click" Text="Add Trucker" />

            <br />
            <br />

            <asp:GridView ID="TruckersGridView" runat="server" CssClass="table table-bordered table-striped table-responsive text-center" BorderWidth="5px" HeaderStyle-BorderWidth="5px" HeaderStyle-BorderColor="Black" HeaderStyle-Font-Bold="true" AlternatingRowStyle-BorderWidth="5px" BorderColor="Black"  AlternatingRowStyle-BackColor="PowderBlue" GridLines="Both" AutoGenerateColumns="False" UseAccessibleHeader="true" OnRowCommand="TruckersGridView_RowCommand" >
                <Columns>
                    <asp:ButtonField Text="<i class='glyphicon glyphicon-pencil'></i> Edit" CommandName="Edit" ControlStyle-CssClass="btn btn-lg bg-warning" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"></asp:ButtonField>
                    <asp:ButtonField Text="<i class='glyphicon glyphicon-remove'></i> Delete" CommandName="Remove" ControlStyle-CssClass="btn btn-lg bg-danger" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"></asp:ButtonField>
                    <asp:BoundField DataField="TruckerID" HeaderText="TruckerID" HeaderStyle-Wrap="false"/>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="City" HeaderText="City" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="State" HeaderText="State" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="Zip" HeaderText="Zip" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="LicenseNumber" HeaderText="License Number" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:BoundField DataField="ExpirationDate" HeaderText="Expiration Date" DataFormatString="{0:M/dd/yyyy}" HeaderStyle-Wrap="false" ItemStyle-Wrap="false"/>
                    <asp:TemplateField HeaderText="Class A" SortExpression="ClassA" HeaderStyle-Wrap="false" ItemStyle-Wrap="false">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassA").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class B" SortExpression="ClassB" HeaderStyle-Wrap="false" ItemStyle-Wrap="false">
                        <ItemTemplate><%# (Boolean.Parse(Eval("ClassB").ToString())) ? "Yes" : "No" %></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class C" SortExpression="ClassC" HeaderStyle-Wrap="false" ItemStyle-Wrap="false">
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
