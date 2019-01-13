<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 652px; top: 21px; left: 9px; z-index: 2; width: 1085px;" class="auto-style1" aria-live="polite" aria-pressed="true" aria-readonly="True" aria-required="True">
            <asp:GridView ID="GridView1" runat="server" Height="160px" Width="211px"></asp:GridView>
            <asp:Label ID="Label1" runat="server" style="top: 1px; height: 20px; width: 95px; text-align: center; z-index: 1; position: absolute; right: 222px; left: 768px;" Text="DepartmentId"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 895px; top: 2px; position: absolute; width: 97px; height: 21px" Text="Salary"></asp:Label>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 662px; top: 2px; position: absolute; width: 95px; right: 328px;" Text="Sex"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" style="height: 17px; top: 2px; left: 425px; position: absolute; width: 64px;" Text="FirstName"></asp:Label>
            <asp:Label ID="Label5" runat="server" style="position: absolute; height: 17px; top: 4px; left: 552px; width: 63px;" Text="LastName"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" style="height: 21px; top: 24px; left: 407px; position: absolute; width: 108px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" style="height: 21px; top: 24px; left: 526px; z-index: 2; width: 108px; position: absolute"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" style="height: 21px; top: 23px; left: 645px; z-index: 2; width: 108px; position: absolute"></asp:TextBox>
            <br />
            <asp:Button ID="btnGetData" runat="server" OnClick="btnGetData_Click" Text="Get Data" style="height: 25px; top: 93px; left: 511px; z-index: 2; width: 68px; position: absolute" />
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" style="height: 21px; top: 24px; left: 764px; z-index: 2; width: 108px; position: absolute"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" style="height: 25px; top: 88px; left: 833px; z-index: 2; width: 89px; position: absolute" />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" style="height: 21px; top: 22px; left: 884px; z-index: 2; width: 108px; position: absolute"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" style="height: 25px; top: 92px; left: 612px; z-index: 2; width: 47px; position: absolute" />
            <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" style="height: 25px; top: 90px; left: 712px; z-index: 2; width: 81px; position: absolute; margin-bottom: 3px" />
            <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 713px; top: 116px; position: absolute; width: 72px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 835px; top: 114px; position: absolute; width: 79px; height: 18px;"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblDept" runat="server" style="height: 19px; top: 283px; left: 584px; position: absolute; width: 54px"></asp:Label>
            <br />
        </div>
        <p style="z-index: 1; left: 10px; top: 688px; position: absolute; height: 19px; width: 1265px">
            <asp:Button ID="btnGetEmployeesByDepartment" runat="server" OnClick="btnGetEmployeesByDepartment_Click" Text="GetEmployeesByDepartment" style="height: 25px; top: -423px; left: 515px; position: absolute; width: 231px" />
        </p>
    </form>
</body>
</html>
