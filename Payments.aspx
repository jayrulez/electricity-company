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
                                <asp:FormView ID="FormViewPayment" runat="server" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    DataSourceID="ccDb" EnableModelValidation="True" GridLines="Vertical" 
                                    DataKeyNames="id" DefaultMode="Insert">
                                    
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        <h3>Add New Payment</h3>
                                        <span class="txtLabel">Amount:</span>
                                        <asp:TextBox ID="amountTextBox" runat="server" 
                                            Text='<%# Bind("amount") %>' />
                                        <br />
                                        <span class="txtLabel">Method:</span>
                                        <asp:TextBox ID="methodTextBox" runat="server" 
                                            Text='<%# Bind("method") %>' />
                                        <br />
                                        <span class="txtLabel">Date:</span>
                                        <asp:TextBox ID="pay_dateTextBox" runat="server" Text='<%# Bind("pay_date") %>' />
                                        <br />
                                        <span class="txtLabel">Paid By:</span>
                                        <asp:TextBox ID="paid_byTextBox" runat="server" 
                                            Text='<%# Bind("paid_by") %>' />
                                        <br />
                                        <span class="txtLabel">Billing Id:</span>
                                        <asp:TextBox ID="billing_idTextBox" runat="server" Text='<%# Bind("billing_id") %>' />
                                        <br />
                                        <span class="txtLabel">Service:</span>
                                        <asp:DropDownList ID="ddlService" runat="server" Text='<%# Bind("service_id") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                </asp:FormView>  
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
