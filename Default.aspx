<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script src="knockout-3.5.0.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>   
        <asp:TextBox ID="txtFirstName" runat="server" data-bind="value: FirstName"></asp:TextBox>
        <asp:TextBox ID="txtLastName" runat="server" data-bind="value: LastName"></asp:TextBox>
        <p>
            Hello <span data-bind="text: FullName" /> 
        </p>

        <script>
            var NameViewModel = function (fname, lname)
            {
                this.FirstName = ko.observable(fname);
                this.LastName = ko.observable(lname);
                this.FullName = ko.computed(function () {
                return this.FirstName() +" "+ this.LastName()
                },this)
            }
            ko.applyBindings(new NameViewModel("Mike","Lawrence"))
        </script>

    </div>
    </form>
</body>
</html>

