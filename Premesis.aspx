<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Premesis.aspx.cs" Inherits="Premesis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Premesis</title>
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
</head>
<body>
	<form id="form1" runat="server">
	<div id="page">
		<div id="header">
		</div>
		<div id="content" class="clearfix">
			<div id="sidebar">
				<div id="side-nav">
                    
					<ul>
						<li><a href="Default.aspx">Management Home</a></li>
						<li><a href="Employees.aspx">Employees</a></li>
						<li><a href="Premesis.aspx" >Premesis</a></li>
						<li><a href="Meters.aspx" >Meters</a></li>
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
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                DataKeyNames="id" DataSourceID="ccDb" EnableModelValidation="True" 
                                GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="street" HeaderText="street" 
                                        SortExpression="street" />
                                    <asp:BoundField DataField="province" HeaderText="province" 
                                        SortExpression="province" />
                                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                    <asp:BoundField DataField="country" HeaderText="country" 
                                        SortExpression="country" />
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
                                SelectCommand="SELECT [id], [street], [province], [city], [country] FROM [premise]">
                            </asp:SqlDataSource>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                                DataSourceID="ccDb" DefaultMode="Insert" EnableModelValidation="True">
                                
                                <InsertItemTemplate>
                                    <span class="txtLabel">Street:</span>
                                    <asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' />
                                    <br />
                                    <span class="txtLabel">Province:</span>
                                    <asp:TextBox ID="provinceTextBox" runat="server" 
                                        Text='<%# Bind("province") %>' />
                                    <br />
                                    <span class="txtLabel">City:</span>
                                    <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                                    <br />
                                    <span class="txtLabel">Country:</span>
                                    <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                
                            </asp:FormView>
					    </div>
                    </div>
				</div>
			</div>
		</div>
		<div id="footer">
		</div>
	</div>
    </form>
</body>
</html>
