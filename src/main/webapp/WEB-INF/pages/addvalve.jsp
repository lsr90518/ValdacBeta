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
    <!-- Date Picker -->
    <link href="/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/css/main.css" rel="stylesheet" type="text/css" />

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
                            <img src="/img/avatar3.png" class="img-circle" alt="User Image" />
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
                <img src="/img/avatar3.png" class="img-circle" alt="User Image" />
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
                <a href="/pages/widgets.html">
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

        <div class="row">
        <form role="form" class="box-body-form" method="post" action="/valve/add">
            <!-- collection -->

            <div class="col-lg-12">
                <div class="box box-primary">
                    <div class="box-header box-panel">
                        <h3 class="box-title">弁情報</h3>
                    </div>


                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" onclick="getAllValve()" value="機器システム"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="KikiSysMei" name="KikiSysMei" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-4">
                                        <input type="text" id="VNo" name="VNo" class="form-control" placeholder="弁番号">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="VNoSub" name="VNoSub" class="form-control" placeholder="職番">
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" id="BenMeisyo" name="BenMeisyo" class="form-control" placeholder="弁名称">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" onclick="getMasterByType(this)" id="2" value="設置設備"/>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="SetSetubi" name="SetSetubi" class="form-control">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" value="設置装備"/>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="SetKiki" name="SetKiki" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" value="設置場所"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="SetBasyo" name="SetBasyo" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" value="系統"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="Keitou" name="Keitou" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" value="ICS番号"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="ICS" name="ICS" class="form-control">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary" value="工具"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="Tool" name="Tool" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->

                </div>

                <div class="box box-danger">
                    <div class="box-header box-panel">
                        <h3 class="box-title">弁仕様</h3>
                    </div>

                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-3">
                                        <input type="text" id="AturyokuMax" name="AturyokuMax" class="form-control" placeholder="圧力">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Tani" name="Tani" class="form-control" placeholder="単位">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="OndoMax" name="OndoMax" class="form-control" placeholder="温度℃">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="流体" />
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="RyutaiRyaku" name="RyutaiRyaku" class="form-control" placeholder="略称">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Ryutai" name="Ryutai" class="form-control">
                                    </div>
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="形式" />

                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="KeisikiRyaku" name="KeisikiRyaku" class="form-control" placeholder="">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Keisiki" name="Keisiki" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="駆動方式" />
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="SousaRyaku" name="SousaRyaku" class="form-control" placeholder="略称">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Sousa" name="Sousa" class="form-control">
                                    </div>
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="クラス" />

                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="ClassRyaku" name="ClassRyaku" class="form-control" placeholder="">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="ClassType" name="ClassType" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="呼び径" />
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="YobikeiRyaku" name="YobikeiRyaku" class="form-control" placeholder="略称">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Yobikei" name="Yobikei" class="form-control">
                                    </div>
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="接続入口" />

                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="SzHouRyaku" name="SzHouRyaku" class="form-control" placeholder="">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="SzHou" name="SzHou" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="接続規格" />
                                    </div>
                                    <div class="col-md-5">
                                        <input type="text" id="SzKikaku" name="SzKikaku" class="form-control">
                                    </div>
                                    <div class="col-md-1">
                                        <input type="button" class="btn btn-danger" value="本体材質" />

                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="ZaisituRyaku" name="ZaisituRyaku" class="form-control" placeholder="略称">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="Zaisitu" name="Zaisitu" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->


                </div>

                <div class="box box-warning">
                    <div class="box-header box-panel">
                        <h3 class="box-title">付帯情報</h3>
                    </div>

                        <div class="box-body">
                            <div class="form-group">
                                <textarea class="form-control" id="Futai" name="Futai" rows="3"></textarea>
                            </div>
                        </div>
                </div>

                <div class="box box-solid">

                    <div class="box-body clearfix">
                        <div class="form-group">
                            <a class="btn btn-default">
                                <i class="fa fa-refresh"></i> リセット
                            </a>
                            <button class="btn btn-success pull-right">
                                <i class="fa fa-save"></i> 保存
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </form>
        </div>

    </section><!-- /.content -->
</aside><!-- /.right-side -->
</div><!-- ./wrapper -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>


<script type="text/javascript">
    $(document).ready(function(){
        $(".box-panel").click(function(){
            $(this).next().toggle();
        });
    });


    function getAllValve(){
        $.get("/valve/getAllValveJson",function(data){
                alert(data[0]);
        });
    }

    function getMasterByType(obj){
        var id=obj.id;
        var typeName="";
//        alert(id);
        $.getJSON("/master/getMasterByTypeJson?id="+id,function(data){

            for(var nIndex=0;nIndex<data.length;nIndex++){
//                alert(data[nIndex].Name);
                typeName=typeName+data[nIndex].Name+'¥n';
            };

            alert(typeName);
        });
    }
</script>

<!-- Morris.js charts -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="/js/plugins/morris/morris.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="/js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- jvectormap -->
<script src="/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
<script src="/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="/js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- datepicker -->
<script src="/js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

<!-- AdminLTE App -->
<script src="/js/AdminLTE/app.js" type="text/javascript"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/js/AdminLTE/dashboard.js" type="text/javascript"></script>

<!-- AdminLTE for demo purposes -->
<script src="/js/AdminLTE/demo.js" type="text/javascript"></script>


</body>
</html>