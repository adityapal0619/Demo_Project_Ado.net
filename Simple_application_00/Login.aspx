<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Simple_application_00.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            height: 64px;
        }
        
        .auto-style2 {
            width: 642px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        body{
            background-image:url("https://img.freepik.com/free-vector/green-nebula_91008-240.jpg?w=2000")
        }
        #div1{
             
         margin: auto;
          width: 50%;
          
          padding: 10px;
          
        }
      table{
         border: 5px solid;
         margin: auto;
          width: 30%;
          
          padding: 10px;
      }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center" class="auto-style1" >Registration</h1>
            <div style="text-align:center" class="auto-style2" id="div1">
            <table style="text-align:center">
                <tr>
                    <td>Name : </td>
                    <td><asp:TextBox ID="TextBox1"  runat="server" MaxLength="12"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Age : </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid Age" ForeColor="Red" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                        <asp:TextBox ID="TextBox2" runat="server"  MaxLength="2"  ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter the Age" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Gender : </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3">
                             <asp:ListItem>--Select--</asp:ListItem>
                           <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Comman</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1"
                ErrorMessage="Field Required!" InitialValue="--Select--" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Designation :  </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                             <asp:ListItem>--Select--</asp:ListItem>
                           <asp:ListItem>Boss</asp:ListItem>
                           <asp:ListItem>Hr</asp:ListItem>
                           <asp:ListItem>Software</asp:ListItem>

                        </asp:DropDownList>

                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2"
                ErrorMessage="Field Required!" InitialValue="--Select--" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td><asp:Button ID="Button1" runat="server" Text="Save" CssClass="auto-style3" Width="55px" OnClick="Button1_Click1" /><asp:Button ID="Button2" runat="server" Text="Reset" Width="59px" OnClick="Button2_Click" /></td>
                </tr>
            </table>
             </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnectionString4 %>" ProviderName="<%$ ConnectionStrings:RegisterConnectionString4.ProviderName %>" SelectCommand="SELECT [Name], [age], [Gender], [Designation] FROM [Name]"></asp:SqlDataSource>
    </form>
</body>
</html>
