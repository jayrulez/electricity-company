<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Employees</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="language" content="en_us" />
    <link rel="stylesheet" type="text/css" href="./Css/common.css" />
    <link rel="stylesheet" type="text/css" href="./Css/layout.css" />
    <!--[if lt IE 8]>
    <link rel="stylesheet" type="text/css" href="./Css/ie.css" />
    <![endif]-->
    <script src="./Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

        });
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 367px;
        }
        .style3
        {
            width: 458px;
        }
    </style>
</head>
<body>
	<div id="page">
		<div id="header">
		</div>
		<div id="content" class="clearfix">
			<div id="sidebar">
				<div id="side-nav">
					<ul>
						<li><a href="Employees.aspx">Employees</a></li>
						<li><a href="Customers.aspx" >Customers</a></li>
						<li><a href="Billing.aspx" >Billing</a></li>
						<li><a href="PaymentServices.aspx" >Payment Services</a></li>
						<li><a href="Payments.aspx" >Payments</a></li>
					</ul>
				</div>
			</div>
			<div id="widebar">
				<div id="widebar-content-container">
                    <div id="widebar-content">
					    <div id="widebar-header">
					    </div>
					    <div id="widebar-body">
                            <form id="formEmployeeGrid" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewEmployees" runat="server" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    AllowPaging="True" DataKeyNames="id" DataMember="DefaultView" 
                                    ShowFooter="True">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="first_name" HeaderText="First Name" 
                                            SortExpression="first_name" />
                                        <asp:BoundField DataField="last_name" HeaderText="Last Name" 
                                            SortExpression="last_name" />
                                        <asp:BoundField DataField="street" HeaderText="Street" 
                                            SortExpression="street" />
                                        <asp:BoundField DataField="province" HeaderText="Province" 
                                            SortExpression="province" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        <asp:BoundField DataField="country" HeaderText="Country" 
                                            SortExpression="country" />
                                        <asp:BoundField DataField="contact_num" HeaderText="Contact #" 
                                            SortExpression="contact_num" />
                                        <asp:CommandField ShowEditButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="ccDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:onwindConnectionString %>" 
                                    SelectCommand="SELECT [first_name], [last_name], [street], [province], [city], [country], [contact_num], [id] FROM [employee]"
                                    
                                    UpdateCommand="UPDATE [employee] SET [first_name] = @first_name, [last_name] = @last_name, [street] = @street, [province] = @province, [city] = @city, [country] = @country, [contact_num] = @contact_num WHERE [id] = @id"  
                                    InsertCommand="INSERT INTO [employee] ([first_name], [last_name], [street], [province], [city], [country], [contact_num]) VALUES (@first_name, @last_name, @street, @province, @city, @country, @contact_num)">
                                    <InsertParameters>
                                        <asp:Parameter Name="first_name" Type="String" />
                                        <asp:Parameter Name="last_name" Type="String" />
                                        <asp:Parameter Name="street" Type="String" />
                                        <asp:Parameter Name="province" Type="String" />
                                        <asp:Parameter Name="city" Type="String" />
                                        <asp:Parameter Name="country" Type="String" />
                                        <asp:Parameter Name="contact_num" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="first_name" Type="String" />
                                        <asp:Parameter Name="last_name" Type="String" />
                                        <asp:Parameter Name="street" Type="String" />
                                        <asp:Parameter Name="province" Type="String" />
                                        <asp:Parameter Name="city" Type="String" />
                                        <asp:Parameter Name="country" Type="String" />
                                        <asp:Parameter Name="contact_num" Type="String" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
			                <div>
                                <table class="style1">
                                    <tr>
                                        <td class="style2">
                                            First Name</td>
                                        <td class="style3">
                                             <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Last Name</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Street
                                    </td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Province
                                    </td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        City</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Country</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Contact Number</td>
                                    <td class="style3">
                                        <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            </div>
                            </form>
					    </div>

                    </div>
				</div>
			</div>
		</div>
		<div id="footer">
		</div>
	</div>
    <p>
    </p>
</body>
</html>
