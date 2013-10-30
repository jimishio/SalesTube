<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="SalesTube._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Online Sales and Inventory Management System</h1>
            </hgroup>
            <p>
                Keeping Track of your Sales and Inventory and generating reports now a few click&#39;s job<br />
                It's Free and always will be.....
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>SalesTube - Home</h3>
    <asp:Panel runat="server" ID="logindetailspanel">
    <ol class="round">
        <li class="one">
            <h5>Does not have a SalesTube Account</h5>
            Contact Administrator and request for one<br /><a href="http://go.microsoft.com/fwlink/?LinkId=245146">Click here to Send Request</a></li>
        <li class="two">
            
            <h5>Already have a SalesTube Account</h5>
            Login to Your Existing Account<br />

            <asp:Label ID="Label1" runat="server" Text="Username :" Width="100"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Password :" Width="100"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            <br />
            <asp:Button ID="loginbtn" runat="server" Text="Login" />
        
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBUserConnString %>" SelectCommand="SELECT [emp_id], [uname], [password], [first_name], [last_name], [dob], [designation], [contact_no] FROM [employee]"></asp:SqlDataSource>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataKeyNames="emp_id" >
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
                    <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                    <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                </Columns>
            </asp:GridView>
        
                </li>
        
        <li class="three">
            <h5>Contact Administrator</h5>
            You can contact administrator and send the feedback/query form<a href="http://go.microsoft.com/fwlink/?LinkId=245143"><br />Click here...</a>
        </li>
    </ol>
        <p>
            &nbsp;</p>
    </asp:Panel>
    <asp:Panel runat="server" ID="userareapanel" Visible="False">
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">You are logged on as :
                    <asp:Label ID="lblDesignation" runat="server" Text="Administrator"></asp:Label>
                    &nbsp; </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Logout" />
                    <asp:Button ID="Button11" runat="server" Text="Backup Database" />
                </td>
            </tr>
        </table>
        <hr />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" style="vertical-align:top">
                    <asp:LinkButton ID="LinkButton1" runat="server">Manage Users</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton6" runat="server">Manage Inventory</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton7" runat="server">Items</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton9" runat="server">Products Catalog</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton12" runat="server">Manage Vendors</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton15" runat="server">Sales Details</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton16" runat="server">Sales Master</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton17" runat="server">Sales Graph</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton18" runat="server">Generate Bill</asp:LinkButton>
                </td>
                <td style="background-color: #808080; width:1px"></td>
                <td class="auto-style3">&nbsp;</td>
                <td style="vertical-align: top">
                    <asp:Panel ID="panel_adduser" runat="server" Visible="false" >
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Manage Users"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" ID="Button3" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Employee ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Username :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Password :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="First Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Last Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Date of Birth :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Designation :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Sales Person</asp:ListItem>
                                        <asp:ListItem>Sales Manager</asp:ListItem>
                                        <asp:ListItem>Inventory Manager</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text="Contact No :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Add User" />
                        &nbsp;&nbsp;
                        <br />
                        <hr />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" style="vertical-align:top">
                                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="Large" Text="List of Existing Users"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button22" runat="server" Text="Delete User" />
                                    &nbsp;<br /> &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBUserConnString %>" SelectCommand="SELECT [emp_id], [uname], [password], [first_name], [last_name], [dob], [designation], [contact_no] FROM [employee]"></asp:SqlDataSource>
                                    <br />
                                    <asp:GridView ID="grd_users" runat="server" AutoGenerateColumns="False" AllowSorting="True" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="850px">
                                        <Columns>
                                            <asp:BoundField DataField="emp_id" HeaderText="ID" ReadOnly="True" SortExpression="emp_id" />
                                            <asp:BoundField DataField="uname" HeaderText="UserID" SortExpression="uname" />
                                            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                                            <asp:BoundField DataField="first_name" HeaderText="FN" SortExpression="first_name" />
                                            <asp:BoundField DataField="last_name" HeaderText="LN" SortExpression="last_name" />
                                            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" >
                                            <ItemStyle Wrap="False" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="designation" HeaderText="Post" SortExpression="designation" />
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        </Columns>
                                        <EditRowStyle BackColor="#FFCC66" />
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>
                    <asp:Panel ID="panel_addvendor" runat="server" Visible="false">

                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="Vendors"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" ID="Button4" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="Vendor ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="Vendor Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="Address :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox12" runat="server" Height="88px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text="Description :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox13" runat="server" Height="109px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <asp:Button ID="Button5" runat="server" Text="Add Vendor" />

                        <br />
                        <hr />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" style="vertical-align:top">
                                    <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Size="Large" Text="List of Existing Vendors"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button23" runat="server" Text="Delete Vendor" />
                                    &nbsp;<br /> &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [vendor_id], [vendor_desc], [vendor_name], [vendor_addr] FROM [vendor]"></asp:SqlDataSource>
                                    <asp:GridView ID="grd_vendors" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="vendor_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="850px">
                                        <Columns>
                                            <asp:BoundField DataField="vendor_id" HeaderText="Vendor ID" ReadOnly="True" SortExpression="vendor_id" />
                                            <asp:BoundField DataField="vendor_name" HeaderText="Name" SortExpression="vendor_name" />
                                            <asp:BoundField DataField="vendor_addr" HeaderText="Address" SortExpression="vendor_addr" />
                                            <asp:BoundField DataField="vendor_desc" HeaderText="Description" SortExpression="vendor_desc" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>

                    <asp:Panel ID="panel_additem" runat="server" Visible="false">

                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="Items (Raw Materials)"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" ID="Button6" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="Item ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Item Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="Manufacturer :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Manufactured Since :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text="Expiry Period :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="Product Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="prod_id" DataValueField="prod_name">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Unit Price :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="Quantity :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="Description :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox20" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="Button7" runat="server" Text="Add Item" />

                        <br />

                        <hr />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" style="vertical-align:top">
                                    <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Size="Large" Text="List of Existing Items"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button26" runat="server" Text="Delete Item" />
                                    <br />
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [item_id], [item_name], [item_desc], [manufacturer], [unit_price], [exp_date], [qty], [mfg_date], [prod_id] FROM [item]"></asp:SqlDataSource>
                                    <asp:GridView ID="grd_vendors0" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="item_id" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" Width="850px">
                                        <Columns>
                                            <asp:BoundField DataField="item_id" HeaderText="Item ID" ReadOnly="True" SortExpression="item_id" />
                                            <asp:BoundField DataField="item_name" HeaderText="Name" SortExpression="item_name" />
                                            <asp:BoundField DataField="item_desc" HeaderText="Description" SortExpression="item_desc" />
                                            <asp:BoundField DataField="manufacturer" HeaderText="Mfg." SortExpression="manufacturer" />
                                            <asp:BoundField DataField="unit_price" HeaderText="Unit Price" SortExpression="unit_price" />
                                            <asp:BoundField DataField="exp_date" HeaderText="Expire Period" SortExpression="exp_date" />
                                            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <br />

                    </asp:Panel>

                    <asp:Panel ID="panel_addproducts" runat="server" Visible="false">

                        <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Large" Text="Products Catalog"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" ID="Button8" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="Product ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Text="Product Name :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label30" runat="server" Text="Description :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox30" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="Price :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label32" runat="server" Text="Quantity :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="Button9" runat="server" Text="Add Product to Catalog" />

                        <br />
                        <hr />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" style="vertical-align:top">
                                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Size="Large" Text="List of Products in Catalog"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button24" runat="server" Text="Delete Product" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [prod_id], [prod_price], [prod_desc], [prod_name], [prod_qty] FROM [product]"></asp:SqlDataSource>
                        <asp:GridView ID="grd_products" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="prod_id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" Width="850px">
                            <Columns>
                                <asp:BoundField DataField="prod_id" HeaderText="ID" ReadOnly="True" SortExpression="prod_id" />
                                <asp:BoundField DataField="prod_name" HeaderText="Product" SortExpression="prod_name" />
                                <asp:BoundField DataField="prod_desc" HeaderText="Description" SortExpression="prod_desc" />
                                <asp:BoundField DataField="prod_price" HeaderText="Price" SortExpression="prod_price" />
                                <asp:BoundField DataField="prod_qty" HeaderText="Quantity" SortExpression="prod_qty" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <br />

                    </asp:Panel>

                    <asp:Panel ID="panel_addinventory" runat="server" Visible="false" >

                        <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="Large" Text="Inventory"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" ID="Button10" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label38" runat="server" Text="Item ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource6" DataTextField="item_id" DataValueField="item_name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [item_id], [item_name], [item_desc], [manufacturer], [unit_price], [qty], [exp_date], [mfg_date], [prod_id] FROM [item]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label39" runat="server" Text="Update Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label40" runat="server" Text="Total Quantity :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label41" runat="server" Text="Vendor ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="vendor_id" DataValueField="vendor_name">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label42" runat="server" Text="Out of Stock :"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="Button15" runat="server" Text="Add Inventory" />
                        <br />
                        <hr />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style5" style="vertical-align:top">
                                    <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Size="Large" Text="Status of Existing Inventory"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button25" runat="server" Text="Delete Inventory Listing" />
                                    <br />
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [item_id], [upd_date], [total_qty], [vendor_id], [out_of_stock] FROM [inventory]"></asp:SqlDataSource>
                                    <asp:GridView ID="grd_inventory" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="850px">
                                        <Columns>
                                            <asp:BoundField DataField="item_id" HeaderText="Item ID" SortExpression="item_id" />
                                            <asp:BoundField DataField="upd_date" HeaderText="Updated On" SortExpression="upd_date" />
                                            <asp:BoundField DataField="total_qty" HeaderText="Total Quantity" SortExpression="total_qty" />
                                            <asp:BoundField DataField="vendor_id" HeaderText="Vendor" SortExpression="vendor_id" />
                                            <asp:BoundField DataField="out_of_stock" HeaderText="Out of Stock" SortExpression="out_of_stock" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <br />

                    </asp:Panel>

                    <asp:Panel ID="panel_salesdetails" runat="server" Visible="false" >

                        <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Size="Large" Text="Sales Details"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label51" runat="server" Text="Invoice No : "></asp:Label>
                        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button28" runat="server" Text="Search Sales Details" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button29" runat="server" Text="Print" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button30" runat="server" Text="Delete Entry" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button31" runat="server" Text="Update Sale Detail" />
                        <br />
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [invoice_no], [prod_id], [unit_price], [qty], [total_amount], [discount], [status] FROM [sales_details] WHERE ([invoice_no] = @invoice_no)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox34" Name="invoice_no" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="grd_salesdetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" Width="850px" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="invoice_no" HeaderText="Invoice No" SortExpression="invoice_no" />
                                <asp:BoundField DataField="prod_id" HeaderText="Product" SortExpression="prod_id" />
                                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                                <asp:BoundField DataField="unit_price" HeaderText="Price" SortExpression="unit_price" />
                                <asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                                <asp:BoundField DataField="total_amount" HeaderText="Total Amount" SortExpression="total_amount" />
                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>

                        <br />

                    </asp:Panel>

                    <asp:Panel ID="panel_salesmaster" runat="server" Visible="false" >

                        <asp:Label ID="Label52" runat="server" Font-Bold="True" Font-Size="Large" Text="Sales Master"></asp:Label>

                        <br />

                        <br />

                        <asp:Label ID="Label53" runat="server" Text="Date : "></asp:Label>
                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button32" runat="server" Text="Search Master" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button33" runat="server" Text="Print" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button34" runat="server" Text="Delete Master Entry" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button35" runat="server" Text="Update Sale Master" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [invoice_no], [aarmount], [pay_node], [cheque_no], [dd_no], [discount], [disc_amount], [base_amount], [emp_id], [invoice_date], [remarks] FROM [sales_master] WHERE ([invoice_date] = @invoice_date)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox35" Name="invoice_date" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="grd_salesmaster" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="invoice_no" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal" Width="850px">
                            <Columns>
                                <asp:BoundField DataField="invoice_no" HeaderText="Invoice No" ReadOnly="True" SortExpression="invoice_no" />
                                <asp:BoundField DataField="pay_node" HeaderText="Mode" SortExpression="pay_node" />
                                <asp:BoundField DataField="cheque_no" HeaderText="Cheque No" SortExpression="cheque_no" />
                                <asp:BoundField DataField="dd_no" HeaderText="DD No" SortExpression="dd_no" />
                                <asp:BoundField DataField="base_amount" HeaderText="Base Amt" SortExpression="base_amount" />
                                <asp:BoundField DataField="disc_amount" HeaderText="Discount" SortExpression="disc_amount" />
                                <asp:BoundField DataField="aarmount" HeaderText="Total Amt" SortExpression="aarmount" />
                                <asp:BoundField DataField="invoice_date" HeaderText="Invoice Date" SortExpression="invoice_date" />
                                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <br />

                    </asp:Panel>

                    <asp:Panel ID="panel_generatebill" runat="server" Visible="false" >

                        <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Size="Large" Text="Generate Bill"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button36" runat="server" Text="Clear All" />
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label55" runat="server" Text="Invoice No :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label56" runat="server" Text="Invoice Date :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox37" runat="server" TextMode="Date"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button37" runat="server" Text="Today" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label57" runat="server" Text="Description :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox41" runat="server">Cheque</asp:TextBox>
                                    &nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button41" runat="server" Text="Cash" />
                                    &nbsp;
                                    <asp:Button ID="Button42" runat="server" Text="Cheque" />
                                    &nbsp;
                                    <asp:Button ID="Button43" runat="server" Text="D/D" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label58" runat="server" Text="Cheque / DD No :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label59" runat="server" Text="Discount (%) :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label60" runat="server" Text="Employee ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource10" DataTextField="emp_id" DataValueField="emp_id">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBUserConnString %>" SelectCommand="SELECT [emp_id] FROM [employee]"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label61" runat="server" Text="Remarks :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox42" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />

                        <asp:Label ID="Label62" runat="server" Font-Bold="True" Font-Size="Large" Text="Bill Details"></asp:Label>
                        <br />
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label63" runat="server" Text="Product ID :"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="prod_id" DataValueField="prod_price">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label64" runat="server" Text="Unit Price :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox44" runat="server" TextMode="Date"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label65" runat="server" Text="Quantity :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox45" runat="server">1</asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label66" runat="server" Text="Total Amount :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <asp:Button ID="Button39" runat="server" Text="Add to List" />
                        <br />
                        <br />
                        <asp:GridView ID="grd_tempsale" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource12" ForeColor="Black" GridLines="Horizontal" Width="850px">
                            <Columns>
                                <asp:BoundField DataField="invoice_no" HeaderText="Invoice No" SortExpression="invoice_no" />
                                <asp:BoundField DataField="prod_id" HeaderText="Product ID" SortExpression="prod_id" />
                                <asp:BoundField DataField="unit_price" HeaderText="Unit Price" SortExpression="unit_price" />
                                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                                <asp:BoundField DataField="total_amount" HeaderText="Total Amount" SortExpression="total_amount" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [invoice_no], [prod_id], [unit_price], [qty], [total_amount] FROM [sales_details] WHERE ([invoice_no] = @invoice_no)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox36" Name="invoice_no" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:SalesDBConnectionString1 %>" SelectCommand="SELECT [invoice_no], [aarmount], [pay_node], [cheque_no], [dd_no], [discount], [disc_amount], [base_amount], [emp_id], [invoice_date], [remarks] FROM [sales_master]"></asp:SqlDataSource>
                        <br />
                        <asp:Button ID="Button40" runat="server" Text="Generate Bill" />

                        <br />

                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td style="background-color: #808080; width:1px">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td style="vertical-align: top">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style2
        {
            width: 122px;
        }
        .auto-style3
        {
            width: 3px;
        }
        .auto-style4
        {
            width: 685px;
        }
        .auto-style5
        {
            width: 900px;
        }
    </style>
</asp:Content>

