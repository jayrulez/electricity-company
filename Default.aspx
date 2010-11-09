<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OnWind</title>
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
            <div id="logo">OnWind Electricity</div>
		</div>
		<div id="content" class="clearfix">
			<div id="sidebar">
				<div id="side-nav">
                    
					<ul>
						<li><a href="Default.aspx">Management Home</a></li>
						<li><a href="Employees.aspx">Employees</a></li>
						<li><a href="Premises.aspx" >Premises</a></li>
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
							<table>
								<tr style="text-align: center; font-size: 14px; font-weight: bold;">
									<td><a href="Default.aspx"><img src="./Images/home.png" alt="*"/></a><br/>Management Home</td>
									<td><a href="Employees.aspx"><img src="./Images/employees.png" alt="*"/></a><br/>Employees</td>
									<td><a href="Premises.aspx" ><img src="./Images/premises.png" alt="*"/></a><br/>Premises</td>
									<td><a href="Meters.aspx" ><img src="./Images/meters.png" alt="*"/></a><br/>Meters</td>
								</tr>
								<tr style="text-align: center; font-size: 14px; font-weight: bold;">
									<td><a href="Customers.aspx" ><img src="./Images/customers.png" alt="*"/></a><br/>Customers</td>
									<td><a href="Billing.aspx" ><img src="./Images/billing.png" alt="*"/></a><br/>Billing</td>
									<td><a href="PaymentServices.aspx" ><img src="./Images/paymentServices.png" alt="*"/></a><br/>Payment Services</td>
									<td><a href="Payments.aspx" ><img src="./Images/payments.png" alt="*"/></a><br/>Payments</td>
								</tr>
							</table>
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
