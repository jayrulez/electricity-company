<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="PaymentServices.aspx.cs" Inherits="PaymentServices" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Payment Services</title>
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
                            <form id="formPaymentServicesGrid" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewPaymentServices" runat="server" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    AllowPaging="True" DataKeyNames="id" DataMember="DefaultView" 
                                    ShowFooter="True">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="Name" 
                                            SortExpression="name" />
                                        <asp:BoundField DataField="branch" HeaderText="Branch" 
                                            SortExpression="branch" />
                                        <asp:BoundField DataField="street" HeaderText="Street" 
                                            SortExpression="street" />
                                        <asp:BoundField DataField="province" HeaderText="Province" 
                                            SortExpression="province" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        <asp:BoundField DataField="country" HeaderText="Country" 
                                            SortExpression="country" />
										<asp:BoundField DataField="service_fee" HeaderText="Service Fee" 
											SortExpression="service_fee" />
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
                                    SelectCommand="SELECT [name], [branch], [street], [province], [city], [country], [service_fee], [id] FROM [payment_service]"
                                    
                                    
                                    UpdateCommand="UPDATE [payment_service] SET [name] = @name, [branch] = @branch, [street] = @street, [province] = @province, [city] = @city, [country] = @country, [service_fee] = @service_fee WHERE [id] = @id" 
                                    DeleteCommand="DELETE FROM [payment_service] WHERE [id] = @id">
                                    <UpdateParameters>
                                        <asp:Parameter Name="name" Type="String" />
                                        <asp:Parameter Name="branch" Type="String" />
                                        <asp:Parameter Name="street" Type="String" />
                                        <asp:Parameter Name="province" Type="String" />
                                        <asp:Parameter Name="city" Type="String" />
                                        <asp:Parameter Name="country" Type="String" />
										<asp:Parameter Name="service_fee" Type="Single" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
									<DeleteParameters>
										<asp:Parameter Name="id" Type="Int32" />
									</DeleteParameters>
                                </asp:SqlDataSource>
                            </div>
                            <div>
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                                    DataSourceID="ccDb" DefaultMode="Insert" EnableModelValidation="True">
                                    <InsertItemTemplate>
                                        <h3>Add New Payment Service</h3>
                                        <span class="txtLabel">Name:</span>
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                        <br />
                                        <span class="txtLabel">Branch:</span>
                                        <asp:TextBox ID="branchTextBox" runat="server" Text='<%# Bind("branch") %>' />
                                        <br />
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
                                        <span class="txtLabel">Service fee:</span>
                                        <asp:TextBox ID="service_feeTextBox" runat="server" 
                                            Text='<%# Bind("service_fee") %>' />
                                        <br />

                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                </asp:FormView>
                            </div>
                            <div>
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