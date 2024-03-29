﻿<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TheCancerProject.ThePages.LoginPage" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>--%>

<!DOCTYPE html>


<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>The Cancer Project | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="../plugins/iCheck/square/blue.css">
      <!-- Alertify -->
    <script src="../dist/js/alertify.min.js"></script>
    <link rel="stylesheet" href="../dist/css/alertify.min.css"/>
    <link rel="stylesheet" href="../dist/css/themes/default.min.css"/>
    <link rel="stylesheet" href="../dist/css/select2.min.css"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <h3><b>The Cancer Project</b></h3>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <form runat="server" method="post">
            <div class="form-group">
                                <%--<asp:Label ID="User" runat="server" Font-Bold="true">Select Hospital</asp:Label>--%>
                               <asp:DropDownList ID="DropDownHospital" class="form-group" runat="server" ClientIDMode="Static" required="required" AppendDataBoundItems="True"  CssClass="form-control" >
                                   <asp:ListItem/>
                               </asp:DropDownList>
                             
                            </div>
          <div class="form-group has-feedback">
            <input type="text" runat="server" class="form-control" id="TextBoxNameUserName" placeholder="Username" required=""/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" runat="server" class="form-control" id="TextBoxNamePassword" TextMode="Password" placeholder="Password" required=""/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox"> Remember Me
                </label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button id="Button1" type="submit" runat="server" OnServerClick="searchsubmit_OnServerClick" class="btn btn-primary pull-right">Sign in</button>
            </div><!-- /.col -->
          </div>
        </form>
        

        <a href="RecoverPassword.aspx">I forgot my password</a><br>
        <div></div>
          <div class="pull-right"><a href="AddAdmin.aspx">Are You An Admin? Add Account</a><br></div> 

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="../plugins/iCheck/icheck.min.js"></script>
      <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
      <!-- JQUERY Select 2 -->
        <script src="../dist/js/select2.min.js"></script>
    <script>
        $(function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square-blue',
                increaseArea: '20%' // optional
            });
        });
    </script>
      <script type="text/javascript">
        $(function () {
            $('#DropDownHospital').select2({ placeholder: "Select Hospital" });
        });
    </script>      
  </body>
</html>
