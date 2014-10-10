<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Valdac</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:http:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
<header class="header">
<a href="index.html" class="logo">
    <!-- Add the class icon to your logo image or logo icon to add the margining -->
    Valdac
</a>
<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
<!-- Sidebar toggle button -->
<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
</a>
<div class="navbar-right">
<ul class="nav navbar-nav">
<!-- User Account: style can be found in dropdown.less -->
<li class="dropdown user user-menu">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
        <i class="glyphicon glyphicon-user"></i>
        <span>${user.username} <i class="caret"></i></span>
    </a>
    <ul class="dropdown-menu">
        <!-- User image -->
        <li class="user-header bg-light-blue">
            <img src="img/avatar3.png" class="img-circle" alt="User Image" />
            <p>
                ${user.username} - ${user.department}
            </p>
        </li>
        <!-- Menu Footer-->
        <li class="user-footer">
            <div class="pull-left">
                <a href="#" class="btn btn-default btn-flat">プロフィール</a>
            </div>
            <div class="pull-right">
                <a href="#" class="btn btn-default btn-flat">退出</a>
            </div>
        </li>
    </ul>
</li>
</ul>
</div>
</nav>
</header>
<div class="wrapper row-offcanvas row-offcanvas-left">
<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="img/avatar3.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>お疲れ様, ${user.username}</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="active">
                <a href="index.html">
                    <i class="fa fa-paste"></i> <span>新規登録</span>
                </a>
            </li>
            <li>
                <a href="pages/widgets.html">
                    <i class="fa fa-edit"></i> <span>アイテム編集</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-upload"></i> <span>画像一括登録</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-files-o"></i> <span>CSV一括登録</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        新規登録
        <small>弁情報登録</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Login</a></li>
        <li class="active">新規登録</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <%--<div class="mailbox row">--%>
        <%--<div class="col-xs-12">--%>
            <%--<div class="box box-solid">--%>
                <%--<div class="box-body">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-md-3 col-sm-4">--%>
                            <%--<!-- BOXES are complex enough to move the .box-header around.--%>
                                 <%--This is an example of having the box header within the box body -->--%>
                            <%--<div class="box-header">--%>
                                <%--<i class="fa fa-inbox"></i>--%>
                                <%--<h3 class="box-title">INBOX</h3>--%>
                            <%--</div>--%>
                            <%--<!-- compose message btn -->--%>
                            <%--<a class="btn btn-block btn-primary" data-toggle="modal" data-target="#compose-modal"><i class="fa fa-pencil"></i> Compose Message</a>--%>
                            <%--<!-- Navigation - folders-->--%>
                            <%--<div style="margin-top: 15px;">--%>
                                <%--<ul class="nav nav-pills nav-stacked">--%>
                                    <%--<li class="header">Folders</li>--%>
                                    <%--<li class="active"><a href="#"><i class="fa fa-inbox"></i> Inbox (14)</a></li>--%>
                                    <%--<li><a href="#"><i class="fa fa-pencil-square-o"></i> Drafts</a></li>--%>
                                    <%--<li><a href="#"><i class="fa fa-mail-forward"></i> Sent</a></li>--%>
                                    <%--<li><a href="#"><i class="fa fa-star"></i> Starred</a></li>--%>
                                    <%--<li><a href="#"><i class="fa fa-folder"></i> Junk</a></li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</div><!-- /.col (LEFT) -->--%>
                        <%--<div class="col-md-9 col-sm-8">--%>
                            <%--<div class="row pad">--%>
                                <%--<div class="col-sm-6">--%>
                                    <%--<label style="margin-right: 10px;">--%>
                                        <%--<div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" id="check-all" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div>--%>
                                    <%--</label>--%>
                                    <%--<!-- Action button -->--%>
                                    <%--<div class="btn-group">--%>
                                        <%--<button type="button" class="btn btn-default btn-sm btn-flat dropdown-toggle" data-toggle="dropdown">--%>
                                            <%--Action <span class="caret"></span>--%>
                                        <%--</button>--%>
                                        <%--<ul class="dropdown-menu" role="menu">--%>
                                            <%--<li><a href="#">Mark as read</a></li>--%>
                                            <%--<li><a href="#">Mark as unread</a></li>--%>
                                            <%--<li class="divider"></li>--%>
                                            <%--<li><a href="#">Move to junk</a></li>--%>
                                            <%--<li class="divider"></li>--%>
                                            <%--<li><a href="#">Delete</a></li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>

                                <%--</div>--%>
                                <%--<div class="col-sm-6 search-form">--%>
                                    <%--<form action="#" class="text-right">--%>
                                        <%--<div class="input-group">--%>
                                            <%--<input type="text" class="form-control input-sm" placeholder="Search">--%>
                                            <%--<div class="input-group-btn">--%>
                                                <%--<button type="submit" name="q" class="btn btn-sm btn-primary"><i class="fa fa-search"></i></button>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</form>--%>
                                <%--</div>--%>
                            <%--</div><!-- /.row -->--%>

                            <%--<div class="table-responsive">--%>
                                <%--<!-- THE MESSAGES -->--%>
                                <%--<table class="table table-mailbox">--%>
                                    <%--<tbody><tr class="unread">--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr class="unread">--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr class="unread">--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr class="unread">--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="small-col"><div class="icheckbox_minimal-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div></td>--%>
                                        <%--<td class="small-col"><i class="fa fa-star-o"></i></td>--%>
                                        <%--<td class="name"><a href="#">John Doe</a></td>--%>
                                        <%--<td class="subject"><a href="#">Urgent! Please read</a></td>--%>
                                        <%--<td class="time">12:30 PM</td>--%>
                                    <%--</tr>--%>
                                    <%--</tbody></table>--%>
                            <%--</div><!-- /.table-responsive -->--%>
                        <%--</div><!-- /.col (RIGHT) -->--%>
                    <%--</div><!-- /.row -->--%>
                <%--</div><!-- /.box-body -->--%>
                <%--<div class="box-footer clearfix">--%>
                    <%--<div class="pull-right">--%>
                        <%--<small>Showing 1-12/1,240</small>--%>
                        <%--<button class="btn btn-xs btn-primary"><i class="fa fa-caret-left"></i></button>--%>
                        <%--<button class="btn btn-xs btn-primary"><i class="fa fa-caret-right"></i></button>--%>
                    <%--</div>--%>
                <%--</div><!-- box-footer -->--%>
            <%--</div><!-- /.box -->--%>
        <%--</div><!-- /.col (MAIN) -->--%>
    <%--</div>--%>

</section><!-- /.content -->
</aside><!-- /.right-side -->
</div><!-- ./wrapper -->

<!-- add new calendar event modal -->


<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>
<!-- Morris.js charts -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="js/plugins/morris/morris.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- jvectormap -->
<script src="js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
<script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- datepicker -->
<script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

<!-- AdminLTE App -->
<script src="js/AdminLTE/app.js" type="text/javascript"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="js/AdminLTE/dashboard.js" type="text/javascript"></script>

<!-- AdminLTE for demo purposes -->
<script src="js/AdminLTE/demo.js" type="text/javascript"></script>

</body>
</html>