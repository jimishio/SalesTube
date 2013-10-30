Public Class _Default
    Inherits Page
    Dim mDB As New SalesDBEntities

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        logindetailspanel.Visible = False
        userareapanel.Visible = False
        hide_all_panels()


        If Session("logged_user") = "" Then
            logindetailspanel.Visible = True
        Else

            userareapanel.Visible = True
            lblDesignation.Text = Session("logged_userfullname")
        End If




        If Session("frno") = 1 Then panel_adduser.Visible = True
        If Session("frno") = 2 Then panel_addinventory.Visible = True
        If Session("frno") = 3 Then panel_additem.Visible = True
        If Session("frno") = 4 Then panel_addproducts.Visible = True
        If Session("frno") = 5 Then panel_addvendor.Visible = True
        If Session("frno") = 6 Then panel_salesdetails.Visible = True
        If Session("frno") = 7 Then panel_salesmaster.Visible = True
        If Session("frno") = 8 Then panel_generatebill.Visible = True

        On Error Resume Next
        TextBox1.Focus()
    End Sub

    Protected Sub loginbtn_Click(sender As Object, e As EventArgs) Handles loginbtn.Click

        If TextBox1.Text = "admin" And TextBox2.Text = "admin" Then
            Session("logged_user") = "Administrator"
            Session("logged_userfullname") = "Administrator"
            Response.Redirect("Default.aspx")
        Else
            Dim i As Int16

            For i = 0 To GridView6.Rows.Count - 1

                If GridView6.Rows(i).Cells(1).Text = TextBox1.Text Then
                    If GridView6.Rows(i).Cells(2).Text = TextBox2.Text Then

                        Session("logged_user") = TextBox1.Text
                        lblDesignation.Text = GridView6.Rows(i).Cells(3).Text & " " & GridView6.Rows(i).Cells(4).Text
                        Session("logged_userfullname") = lblDesignation.Text
                        Response.Redirect("Default.aspx")

                    End If
                End If



            Next
        End If
        'after login check

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("logged_user") = ""
        logindetailspanel.Visible = True
        userareapanel.Visible = False

        Session("frno") = 0
    End Sub

    Function hide_all_panels()
        panel_adduser.Visible = False
        panel_additem.Visible = False
        panel_addvendor.Visible = False
        panel_addproducts.Visible = False
        panel_addinventory.Visible = False
        panel_salesdetails.Visible = False
        panel_salesmaster.Visible = False
        panel_generatebill.Visible = False
        Return 0
    End Function

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        On Error Resume Next

        hide_all_panels()
        panel_adduser.Visible = True


        grd_users.Visible = True
        Session("frno") = 1

    End Sub

    Protected Sub LinkButton12_Click(sender As Object, e As EventArgs) Handles LinkButton12.Click
        hide_all_panels()
        panel_addvendor.Visible = True
        Session("frno") = 5

    End Sub

    Protected Sub LinkButton7_Click(sender As Object, e As EventArgs) Handles LinkButton7.Click
        hide_all_panels()
        panel_additem.Visible = True
        Session("frno") = 3

    End Sub

    Protected Sub LinkButton9_Click(sender As Object, e As EventArgs) Handles LinkButton9.Click
        hide_all_panels()
        panel_addproducts.Visible = True
        Session("frno") = 4

    End Sub

    Protected Sub LinkButton6_Click(sender As Object, e As EventArgs) Handles LinkButton6.Click
        hide_all_panels()
        panel_addinventory.Visible = True
        Session("frno") = 2

    End Sub

    'User Management ====================================================================================
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        SqlDataSource1.InsertCommand = "insert into employee values('" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & DropDownList1.Text & "','" & TextBox9.Text & "','','','')"
        SqlDataSource1.Insert()

        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""

    End Sub

    Protected Sub Button22_Click(sender As Object, e As EventArgs) Handles Button22.Click
        Dim str As String
        str = InputBox("Enter Username to Delete : ", "Delete User")

        If str <> "" Then
            SqlDataSource1.DeleteCommand = "delete from employee where uname='" & str & "'"
            SqlDataSource1.Delete()

        End If
    End Sub
    'User Management ====================================================================================

    Protected Sub Button23_Click(sender As Object, e As EventArgs) Handles Button23.Click
        Dim str As String
        str = InputBox("Enter Vendor ID to Delete : ", "Delete Vendor")

        If str <> "" Then
            SqlDataSource2.DeleteCommand = "delete from vendor where vendor_id='" & str & "'"
            SqlDataSource2.Delete()

        End If
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        SqlDataSource2.InsertCommand = "insert into vendor values('" & TextBox10.Text & "','" & TextBox11.Text & "','" & TextBox12.Text & "','" & TextBox13.Text & "','','')"
        SqlDataSource2.Insert()
        TextBox10.Text = ""
        TextBox11.Text = ""
        TextBox12.Text = ""
        TextBox13.Text = ""
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        SqlDataSource4.InsertCommand = "insert into product values('" & TextBox23.Text & "','" & TextBox24.Text & "','" & TextBox30.Text & "','" & TextBox26.Text & "','" & TextBox27.Text & "')"
        SqlDataSource4.Insert()

        TextBox23.Text = ""
        TextBox24.Text = ""
        TextBox26.Text = ""
        TextBox27.Text = ""
        TextBox30.Text = ""
        
    End Sub

    Protected Sub Button24_Click(sender As Object, e As EventArgs) Handles Button24.Click
        Dim str As String
        str = InputBox("Enter Product ID to Delete : ", "Delete Product")

        If str <> "" Then
            SqlDataSource4.DeleteCommand = "delete from product where prod_id='" & str & "'"
            SqlDataSource4.Delete()

        End If
    End Sub

    Protected Sub Button15_Click(sender As Object, e As EventArgs) Handles Button15.Click
        SqlDataSource5.InsertCommand = "insert into inventory values('" & DropDownList4.Text & "','" & TextBox32.Text & "','" & TextBox33.Text & "','" & DropDownList3.Text & "','" & CheckBox1.Checked & "','','','')"
        SqlDataSource5.Insert()

       
        TextBox32.Text = ""
        TextBox33.Text = ""
        CheckBox1.Checked = False
    End Sub

    Protected Sub Button25_Click(sender As Object, e As EventArgs) Handles Button25.Click
        Dim str As String, str1 As String
        str = InputBox("Enter Item ID of Inventory Listing to Delete : ", "Delete Inventory")
        str1 = InputBox("Enter Vendor ID of Inventory Listing to Delete : ", "Delete Inventory")

        If str <> "" And str1 <> "" Then
            SqlDataSource5.DeleteCommand = "delete from inventory where item_id='" & str & "' and vendor_id='" & str1 & "'"
            SqlDataSource5.Delete()

        End If
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        SqlDataSource7.InsertCommand = "insert into item values('" & TextBox14.Text & "','" & TextBox15.Text & "','" & TextBox20.Text & "','" & TextBox16.Text & "','" & TextBox21.Text & "','" & TextBox22.Text & "','" & TextBox18.Text & "','" & TextBox17.Text & "','" & DropDownList2.Text & "','','','')"
        SqlDataSource7.Insert()

        TextBox14.Text = ""
        TextBox15.Text = ""
        TextBox16.Text = ""
        TextBox17.Text = ""
        TextBox18.Text = ""
        TextBox20.Text = ""
        TextBox21.Text = ""
        TextBox22.Text = ""
       
    End Sub

    Protected Sub Button26_Click(sender As Object, e As EventArgs) Handles Button26.Click
        Dim str As String
        str = InputBox("Enter Item ID to Delete : ", "Delete Item")

        If str <> "" Then
            SqlDataSource7.DeleteCommand = "delete from item where item_id='" & str & "'"
            SqlDataSource7.Delete()

        End If
    End Sub

    Protected Sub LinkButton15_Click(sender As Object, e As EventArgs) Handles LinkButton15.Click
        hide_all_panels()
        panel_salesdetails.Visible = True
        Session("frno") = 6

    End Sub

    Protected Sub Button28_Click(sender As Object, e As EventArgs) Handles Button28.Click
        'Dim x As New System.Web.UI.DataSourceSelectArguments
        'x.SortExpression = "select invoice_no,prod_id,unit_price,qty,total_amount,discount,status,extra_1 from sales_details where extra_1='" & TextBox34.Text & "'"
        'SqlDataSource8.Select(x)
    End Sub

    Protected Sub Button30_Click(sender As Object, e As EventArgs) Handles Button30.Click
        Dim str As String, str1 As String
        str = InputBox("Enter Invoice Number of Sale to Delete : ", "Delete Sale Detail")
        str1 = InputBox("Enter Date of Purchase of Sale to Delete : ", "Delete Sale Detail")

        If str <> "" And str1 <> "" Then
            SqlDataSource5.DeleteCommand = "delete from sales_details where invoice_no='" & str & "' and extra_1='" & str1 & "'"
            SqlDataSource5.Delete()

        End If
    End Sub

    Protected Sub Button31_Click(sender As Object, e As EventArgs) Handles Button31.Click
        Dim str As String, str1 As String, str2 As String, str3 As String
        str = InputBox("Enter Invoice Number of Sale to Delete : ", "Update Sale Detail")
        str1 = InputBox("Enter Date of Purchase of Sale to Delete : ", "Update Sale Detail")
        
        If str <> "" And str1 <> "" Then
            str2 = InputBox("Enter New Quantity : ", "Update Sale Detail")
            str3 = InputBox("Enter New Price : ", "Update Sale Detail")
            'Write Update Query here
            SqlDataSource8.UpdateCommand = ""
            SqlDataSource8.Update()

        End If
    End Sub

    Protected Sub LinkButton16_Click(sender As Object, e As EventArgs) Handles LinkButton16.Click
        hide_all_panels()
        panel_salesmaster.Visible = True
        Session("frno") = 7

    End Sub

    Protected Sub LinkButton18_Click(sender As Object, e As EventArgs) Handles LinkButton18.Click
        hide_all_panels()
        panel_generatebill.Visible = True
        Session("frno") = 8
    End Sub

    Protected Sub Button37_Click(sender As Object, e As EventArgs) Handles Button37.Click
        TextBox37.Text = Date.Today
    End Sub

    Protected Sub DropDownList7_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList7.SelectedIndexChanged
        TextBox44.Text = DropDownList7.SelectedValue
    End Sub

    
    Protected Sub Button39_Click(sender As Object, e As EventArgs) Handles Button39.Click
        On Error Resume Next
        Dim str2 As String

        Session("current_invoice_no") = TextBox36.Text

        If grd_tempsale.Rows.Count = 0 Then
            Dim str As String


            str = "insert into sales_master values ('" & TextBox36.Text & _
                "',0,'" & TextBox41.Text & "','" & TextBox39.Text & "','','" & TextBox40.Text & "',0,0,'" & _
                DropDownList5.Text & "','" & TextBox37.Text & "','" & TextBox42.Text & "','','','')"


            SqlDataSource13.InsertCommand = str
            SqlDataSource13.Insert()

        End If

        str2 = "insert into sales_details values ('" & TextBox36.Text & _
            "','" & DropDownList7.SelectedItem.Text & "','" & TextBox44.Text & "','" & TextBox45.Text & "','" & _
            TextBox46.Text & "',0,'Success','','','','')"

        SqlDataSource12.InsertCommand = str2
        SqlDataSource12.Insert()

        TextBox44.Text = ""
        TextBox45.Text = ""
        TextBox46.Text = ""
    End Sub

    Private Sub grd_users_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles grd_users.RowUpdated
      
    End Sub

    Protected Sub grd_users_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grd_users.SelectedIndexChanged

    End Sub

    Protected Sub Button41_Click(sender As Object, e As EventArgs) Handles Button41.Click
        TextBox41.Text = "Cash"
    End Sub

    Protected Sub Button42_Click(sender As Object, e As EventArgs) Handles Button42.Click
        TextBox41.Text = "Cheque"
    End Sub

    Protected Sub Button43_Click(sender As Object, e As EventArgs) Handles Button43.Click
        TextBox41.Text = "D/D"
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button11_Click1(sender As Object, e As EventArgs) Handles Button11.Click
        'Shell("C:\Users\Beastmaster\Desktop\Full Backup.bat", AppWinStyle.NormalFocus)
        'Dim proc As New System.Diagnostics.Process
        'proc = System.Diagnostics.Process.Start("C:\Users\Beastmaster\Desktop\Full Backup.bat")
        'proc.WaitForExit()
  
        'Dim myProcess As Process = New Process
        'myProcess.StartInfo.FileName = "C:\\Users\\Beastmaster\\Desktop\\Full Backup.bat"
        'myProcess.StartInfo.WindowStyle = ProcessWindowStyle.Normal
        'myProcess.StartInfo.CreateNoWindow = True
        'myProcess.Start()
        'myProcess.WaitForExit()
        'myProcess.Close()

        Process.Start("C:\\Users\\Beastmaster\\Desktop\\Full Backup.bat")

    End Sub
End Class