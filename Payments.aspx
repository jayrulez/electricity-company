<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Payments.aspx.cs" Inherits="Payments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Paymnets</title>
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
            width: 348px;
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
                            <form id="formPaymentsGrid" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewPayments" runat="server" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    AllowPaging="True" DataKeyNames="id" DataMember="DefaultView" 
                                    ShowFooter="True">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="amount" HeaderText="Amount Paid" 
                                            SortExpression="amount" />
                                        <asp:BoundField DataField="method" HeaderText="Method" 
                                            SortExpression="method" />
                                        <asp:BoundField DataField="pay_date" HeaderText="Date Paid" 
                                            SortExpression="pay_date" />
                                        <asp:BoundField DataField="paid_by" HeaderText="Paid By" SortExpression="paid_by" />
                                        <asp:BoundField DataField="billing_id" HeaderText="Billing Id" 
                                            SortExpression="billing_id" />
										<asp:BoundField DataField="service_id" HeaderText="Service Id" 
											SortExpression="service_id" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="ccDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:onwindConnectionString %>" 
                                    SelectCommand="SELECT [amount], [method], [pay_date], [paid_by], [billing_id], [service_id], [id] FROM [payment]">
                                </asp:SqlDataSource>
                            </div>
                            <div>
                                
                                <table class="style1">
                                    <tr>
                                        <td class="style2">
                                            Amount</td>
                                        <td>
                                            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Method</td>
                                        <td>
                                            <asp:TextBox ID="txtMethod" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Date</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Paid By</td>
                                        <td>
                                            <asp:TextBox ID="txtPaidBy" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Billing Id</td>
                                        <td>
                                            <asp:TextBox ID="txtBillingId" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style2">
                                            Service </td>
                                        <td>
                                            <asp:DropDownList ID="ddlPaymentService" runat="server">
                                            </asp:DropDownList>
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
</body>
</html>
