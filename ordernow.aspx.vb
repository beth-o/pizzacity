'Beth Marlatt
'CIS141
'Date: April 17,2017
'Assignment: Pizza Order website
'NOTE: The validation did not work 
'consistently For IE. It did not 
'prevent blank textboxes

Option Strict On
Option Explicit On

Partial Class About
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Try
            'declare variables: NOTE: I tried to used the selectedvalue property in the ddl's but couldn't 
            'get around the invalid cast exception- even when casting to a double- or whatever so used the old-fashioned way
            Dim pizzaSize As String
            Dim top1 As String
            Dim top2 As String
            Dim extraTop1 As String
            Dim extraTop2 As String
            Dim extraTop3 As String
            Dim pizzaPrice As Double
            Dim extraTop1Price As Double
            Dim extraTop2Price As Double
            Dim extraTop3Price As Double
            Dim totalOrder As Double
            pizzaSize = ddlSizeOfPizza.SelectedItem.Text

            If ddlSizeOfPizza.SelectedIndex = 0 Then pizzaPrice = 8.99
            If ddlSizeOfPizza.SelectedIndex = 1 Then pizzaPrice = 12.99
            If ddlSizeOfPizza.SelectedIndex = 2 Then pizzaPrice = 15.99
            If ddlSizeOfPizza.SelectedIndex = 3 Then pizzaPrice = 18.99

            'price out the order according to the ddl index
            If ddlExtraTopping1.SelectedIndex <> 0 Then
                extraTop1Price = 0.99
            Else
                extraTop1Price = 0
            End If

            If ddlExtraTopping2.SelectedIndex <> 0 Then
                extraTop2Price = 0.99
            Else
                extraTop2Price = 0
            End If

            If ddlExtraTopping3.SelectedIndex <> 0 Then
                extraTop3Price = 0.99
            Else
                extraTop3Price = 0
            End If

            'get names of toppings
            top1 = ddlTopping1.SelectedItem.Text
            top2 = ddlTopping2.SelectedItem.Text
            extraTop1 = ddlExtraTopping1.SelectedItem.Text
            extraTop2 = ddlExtraTopping2.SelectedItem.Text
            extraTop3 = ddlExtraTopping3.SelectedItem.Text
            'total the order
            totalOrder = pizzaPrice + extraTop1Price + extraTop2Price + extraTop3Price


            ' orderconfirmation.lstConfirmation.Items.Add(txtName.Text)
            ' orderconfirmation.lstConfirmation.Items.Add(txtStreet.Text)

            'display order back to user
            MsgBox("Order Confirmation:" & vbCrLf &
            "Pizza/Regular Toppings: " & vbTab & pizzaSize & " pizza, " & top1 & ", " & top2 & vbCrLf &
            "Extra Toppings: " & vbTab & vbTab & extraTop1 & ", " & extraTop2 & ", " & extraTop3 & vbCrLf &
            "Total: " & vbTab & totalOrder & vbCrLf &
            "Thank you! Your pizza will be delivered within 45 minutes.", MsgBoxStyle.OkCancel, "Confirmation")

            'If order is canceled leave the name/address info, reset pizza choices
            If CBool(MsgBoxResult.Cancel) Then
                txtName.Text = ""

                ddlSizeOfPizza.SelectedIndex = -1
                ddlTopping1.SelectedIndex = -1
                ddlTopping2.SelectedIndex = -1
                ddlExtraTopping1.SelectedIndex = -1
                ddlExtraTopping2.SelectedIndex = -1
                ddlExtraTopping3.SelectedIndex = -1
            End If
        Catch ex As Exception
            MsgBox("There was an error.")
        End Try


    End Sub
    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        'clear fields, I feel like m&m's instead
        txtName.Text = ""
        txtStreet.Text = ""
        txtUnitNo.Text = ""
        txtZip.Text = ""
        txtPhone.Text = ""
        txtEmail.Text = ""
        txtStreet.Text = ""
        ddlSizeOfPizza.SelectedIndex = -1
        ddlTopping1.SelectedIndex = -1
        ddlTopping2.SelectedIndex = -1
        ddlExtraTopping1.SelectedIndex = -1
        ddlExtraTopping2.SelectedIndex = -1
        ddlExtraTopping3.SelectedIndex = -1
    End Sub
End Class