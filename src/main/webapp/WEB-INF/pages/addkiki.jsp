<%--
  Created by IntelliJ IDEA.
  User: Lsr
  Date: 10/15/14
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="/css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/css/kiki.css" rel="stylesheet" type="text/css" />

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
                <small>機器情報登録</small>
            </h1>
            <ol class="breadcrumb">
                <li><i class="fa fa-dashboard"></i> Login</li>
                <li class="active"><a href="/valve">${valve.benMeisyo}</a></li>
                <li>機器情報登録</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

        <div class="row">
        <!-- collection -->

            <div class="col-lg-12">
                <div class="box box-solid box-primary">
                    <div class="box-header box-panel">
                        <h3 class="box-title">${valve.benMeisyo}の弁情報</h3>
                    </div>


                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    弁番号
                                </div>
                                <div class="col-md-4">
                                    ${valve.vNo}
                                </div>
                                <div class="col-md-2">
                                    類番
                                </div>
                                <div class="col-md-4">
                                    ${valve.vNoSub}
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    圧力
                                </div>
                                <div class="col-md-2">
                                    ${valve.aturyokuMax}${valve.tani}
                                </div>
                                <div class="col-md-2">
                                    温度
                                </div>
                                <div class="col-md-2">
                                    ${valve.ondoMax}℃
                                </div>
                                <div class="col-md-2">
                                    流体名称
                                </div>
                                <div class="col-md-2">
                                    ${valve.ryutai}(${valve.ryutaiRyaku})
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    形式
                                </div>
                                <div class="col-md-2">
                                    ${valve.keisiki}(${valve.keisikiRyaku})
                                </div>
                                <div class="col-md-2">
                                    駆動方式
                                </div>
                                <div class="col-md-2">
                                    ${valve.sousa}(${valve.sousaRyaku})
                                </div>
                                <div class="col-md-2">
                                    クラス
                                </div>
                                <div class="col-md-2">
                                    ${valve.classType}(${valve.classRyaku})
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    呼び径
                                </div>
                                <div class="col-md-2">
                                    ${valve.yobikei}(${valve.yobikeiRyaku})
                                </div>
                                <div class="col-md-2">
                                    接続方式
                                </div>
                                <div class="col-md-2">
                                    ${valve.szHou}(${valve.szHouRyaku})
                                </div>
                                <div class="col-md-1">
                                    接続規格
                                </div>
                                <div class="col-md-1">
                                    ${valve.szKikaku}
                                </div>
                                <div class="col-md-1">
                                    本体材質
                                </div>
                                <div class="col-md-1">
                                    ${valve.zaisitu}(${valve.zaisituRyaku})
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    ICS
                                </div>
                                <div class="col-md-10">${valve.ics}</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    付帯情報
                                </div>
                                <div class="col-md-10">${valve.futai}</div>
                            </div>
                        </div>

                    </div><!-- /.box-body弁情報 -->
                </div>

                <div class="box box-success">
                    <div class="box-header box-panel">
                        <h3 class="box-title">機器一覧</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-8">
                                <button class="btn btn-success" data-toggle="modal" data-target=".content-modal">追加</button>
                            </div>
                            <div class="col-md-4">
                                <ul class="pagination">
                                    <li class="prev disabled"><a href="#">← Previous</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li class="next"><a href="#">Next → </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover kiki-table">
                                <tbody><tr>
                                    <th>弁分類</th>
                                    <th>連番</th>
                                    <th>主管係</th>
                                    <th>機器名称</th>
                                    <th>メーカ名</th>
                                    <th>型式番号</th>
                                    <th>シリアル</th>
                                    <th>オーダー</th>
                                    <th>操作</th>
                                </tr>
                                <c:forEach items="${kikiList}" var="tmpkiki">
                                    <tr>
                                        <td>${tmpkiki.kikiBunrui}</td>
                                        <td>${tmpkiki.kikiBunruiSeq}</td>
                                        <td>${tmpkiki.kikiMei}</td>
                                        <td>${tmpkiki.syukan}</td>
                                        <td>${tmpkiki.maker}(${tmpkiki.makerRyaku})</td>
                                        <td>${tmpkiki.katasikiNo}</td>
                                        <td>${tmpkiki.serialNo}</td>
                                        <td>${tmpkiki.orderNo}</td>

                                        <td>
                                            <div class="operation-button">
                                                <a class="btn btn-primary btn-sm operation-button-btn"><i class="fa fa-pencil"></i></a>
                                                <a class="btn btn-danger btn-sm operation-button-btn"><i class="fa fa-trash-o"></i></a>
                                                <a class="btn btn-info btn-sm operation-button-btn" href="/kiki/${tmpkiki.kikiId}"><i class="fa fa-arrow-right"></i></a>
                                                <input type="hidden" class="kikiId" value="${tmpkiki.kikiId}"/>
                                            </div>
                                        </td>
                                    </tr>

                                </c:forEach>
                                </tbody></table>
                        </div>
                    </div>
                </div>


            </div>
        </div><!-- insert -->

        <!-- add content modal -->
        <div id="kiki-modal" class="modal fade content-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <form action="/kiki/add" id="KikiForm" name="KikiForm" method="post">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">機器登録</h4>
                        </div>
                        <div class="modal-body">

                                <input type="hidden" name="kikiSysId" value="${valve.kikiSysId}" />
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            機器分類
                                        </div>
                                        <div class="col-md-10">
                                            <select name="kikiBunrui" class="form-control">
                                                <option>弁</option>
                                                <option>駆動部</option>
                                                <option>補助部</option>
                                                <option>付属部</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            機器番号
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="kikiNo" class="form-control" />
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="button" class="btn btn-default" value="機器名称" />
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="kikiMei" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="button" class="btn btn-default" value="主管係" />
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="syukan" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <input type="button" class="btn btn-default" value="メーカー" />
                                        </div>
                                        <div class="col-md-3">
                                            <input type="text" name="makerRyaku" class="form-control" placeholder="略称" />
                                        </div>
                                        <div class="col-md-7">
                                            <input type="text" name="maker" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            型式番号
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="katasikiNo" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            シリアル番号
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="serialNo" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            オーダー番号
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="orderNo" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-2">
                                            備考
                                        </div>
                                        <div class="col-md-10">
                                            <input type="text" name="bikou"class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <hr/>

                                <div class="form-group">
                                    <input type="hidden" name="imageId" value="" />
                                    <div class="row">
                                        <div class="col-md-1"></div>
                                        <div class="col-md-3">
                                            <select class="form-control">
                                                <option>画像種別</option>
                                                <option>画像種別</option>
                                                <option>画像種別</option>
                                                <option>画像種別</option>
                                                <option>画像種別</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <input type="file" />

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="登録" />
                        </div>
                    </div>
                </div>
            </form>
        </div>


        <!-- update content modal -->
        <div id="kiki-update-modal" class="modal fade update-content-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <form action="/kiki/update" id="update-KikiForm" name="updateKikiForm" method="post">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="update-myModalLabel">機器情報更新</h4>
                        </div>
                        <div class="modal-body">

                            <input type="hidden" name="kikiSysId" value="${valve.kikiSysId}" />
                            <input type="hidden" name="kikiId" id="update-kikiId" value="" />
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        機器分類
                                    </div>
                                    <div class="col-md-10">
                                        <select name="kikiBunrui" id="kikiBunrui" class="form-control">
                                            <option>弁</option>
                                            <option>駆動部</option>
                                            <option>補助部</option>
                                            <option>付属部</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        機器番号
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="kikiNo" id="kikiNo" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="機器名称" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="kikiMei" id="kikiMei" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="主管係" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="syukan" id="syukan" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="メーカー" />
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" name="makerRyaku" id="makerRyaku" class="form-control" placeholder="略称" />
                                    </div>
                                    <div class="col-md-7">
                                        <input type="text" name="maker" id="maker" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        型式番号
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="katasikiNo" id="katasikiNo" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        シリアル番号
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="serialNo" id="serialNo" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        オーダー番号
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="orderNo" id="orderNo" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        備考
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="bikou" id="bikou" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <hr/>

                            <div class="form-group">
                                <input type="hidden" name="imageId" id="imageId" value="" />
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <select class="form-control">
                                            <option>画像種別</option>
                                            <option>画像種別</option>
                                            <option>画像種別</option>
                                            <option>画像種別</option>
                                            <option>画像種別</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <input type="file" />

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="更新" />
                        </div>
                    </div>
                </div>
            </form>
        </div><!-- update over -->
        <form id="delete-form" action="/kiki/delete" method="post">
            <input type="hidden" id="delete-id" name="kikiId" value="" />
        </form>


        </section><!-- /.content -->
    </aside><!-- /.right-side -->
</div><!-- ./wrapper -->

<!-- add new calendar event modal -->


<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $(".box-panel").click(function(){
            $(this).next().toggle();
        });

        $(".kiki-table tr").mouseover(function(obj){
            var tr = $(obj.currentTarget)[0];
            $(tr).find(".operation-button").css("opacity","1");
        });
        $(".kiki-table tr").mouseout(function(obj){
            var tr = $(obj.currentTarget)[0];
            $(tr).find(".operation-button").css("opacity","0");
        });

        $(".operation-button-btn").click(function(){
            var operation = $($(this)[0]).find("i");
            var operationStr = new String(operation[0].className);
            var kikiId = $($(this)[0]).siblings(".kikiId")[0].value;
            if(operationStr == "fa fa-pencil"){
                //edit
                $.getJSON("/kiki/getKikiByKikiId",{kikiId:kikiId},function(data){
                    $("#update-kikiId").val(data.kikiId);
                    $("#kikiBunrui").html("<option>"+data.kikiBunrui+"</option>"+$("#kikiBunrui").html());
                    $("#kikiNo").val(data.kikiNo);
                    $("#kikiMei").val(data.kikiMei);
                    $("#syukan").val(data.syukan);
                    $("#makerRyaku").val(data.makerRyaku);
                    $("#maker").val(data.maker);
                    $("#katasikiNo").val(data.katasikiNo);
                    $("#serialNo").val(data.serialNo);
                    $("#orderNo").val(data.bikou);
                    $("#kiki-update-modal").modal('show');
                });

            } else if(operationStr == "fa fa-trash-o") {
                //delete
                $("#delete-id").val(kikiId);
                $("#delete-form").submit();
            } else {
                //goto buhin
            }
        });
    });
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