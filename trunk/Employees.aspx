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
</head>
<body>
	<div id="page">
		<div id="header">
		</div>
		<div id="content" class="clearfix">
			<div id="sidebar">
				<div id="side-nav">
					<ul>
						<li><a href="Employees.aspx" class="active">Employees</a></li>
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
                            <form id="form1" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewEmployees" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True">
                                    <Columns>
                                        <asp:BoundField DataField="first_name" HeaderText="first_name" 
                                            SortExpression="first_name" />
                                        <asp:BoundField DataField="last_name" HeaderText="last_name" 
                                            SortExpression="last_name" />
                                        <asp:BoundField DataField="street" HeaderText="street" 
                                            SortExpression="street" />
                                        <asp:BoundField DataField="province" HeaderText="province" 
                                            SortExpression="province" />
                                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                        <asp:BoundField DataField="country" HeaderText="country" 
                                            SortExpression="country" />
                                        <asp:BoundField DataField="contact_num" HeaderText="contact_num" 
                                            SortExpression="contact_num" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="ccDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:onwindConnectionString %>" 
                                    SelectCommand="SELECT [first_name], [last_name], [street], [province], [city], [country], [contact_num] FROM [employee]">
                                </asp:SqlDataSource>
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
</body>
</html>
