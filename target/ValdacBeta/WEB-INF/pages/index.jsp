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
<c:import url="htmlframe/headFrame.jsp" />

<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
<c:import url="htmlframe/headerFrame.jsp"/>
<div class="wrapper row-offcanvas row-offcanvas-left">
<!-- Left side column. contains the logo and sidebar -->
    <c:import url="htmlframe/leftFrame.jsp" />

<!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
    <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Valdac
                </h1>
                <ol class="breadcrumb">
                    <li><i class="fa fa-dashboard"></i> Index</li>
                </ol>
            </section>

    <!-- Main content -->
            <section class="content">

                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3>
                                    新規
                                </h3>
                                <p>
                                    バルブ情報登録
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="/item/add" class="small-box-footer">
                                入る <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->

                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3>
                                    一覧
                                </h3>
                                <p>
                                    アイテム情報一覧
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="/item" class="small-box-footer">
                                入る <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->

                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-blue">
                            <div class="inner">
                                <h3>
                                    画像
                                </h3>
                                <p>
                                    画像一括登録
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-ios7-cart-outline"></i>
                            </div>
                            <a href="/image" class="small-box-footer">
                                入る <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3>
                                    CSV
                                </h3>
                                <p>
                                    CSV一括登録
                                </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="/csv" class="small-box-footer">
                                入る <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div>

                </div>

                    <div class="row">
                        <!-- collection -->
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">バルブ一覧</h3>
                                    <div class="box-tools">
                                        <div class="input-group">
                                            <input type="text" name="table_search" id="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default" id="table_search_btn"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table class="table table-hover valve-table">
                                        <thead><tr>
                                            <th>弁番号</th>
                                            <th>弁名称</th>
                                            <th>型式</th>
                                            <th>操作</th>
                                            <th>クラス</th>
                                            <th>操作</th>
                                        </tr></thead>
                                        <tbody>
                                        <c:forEach items="${valveList}" var="tmpValve">
                                            <tr>
                                                <td>${tmpValve.vNo}</td>
                                                <td>${tmpValve.benMeisyo}</td>
                                                <td>${tmpValve.keisiki}</td>
                                                <td>${tmpValve.sousa}</td>
                                                <td>${tmpValve.classType}</td>

                                                <td>
                                                    <div class="operation-button">
                                                        <a class="btn btn-primary btn-sm operation-button-btn" href="/item/${tmpValve.kikiSysId}"><i class="fa fa-pencil"></i></a>
                                                        <a class="btn btn-danger btn-sm operation-button-btn" href="/item/${tmpValve.kikiSysId}/delete"><i class="fa fa-trash-o"></i></a>
                                                    </div>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                        </tbody></table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>

                    </div>
            </section><!-- /.content -->
    </aside><!-- /.right-side -->
</div><!-- ./wrapper -->

<!-- add new calendar event modal -->

<script type="text/javascript">
    $(document).ready(function(){
        $(".box-panel").click(function(){
            $(this).next().toggle();
        });

        $(".valve-table tr").mouseover(function(obj){
            var tr = $(obj.currentTarget)[0];
            $(tr).find(".operation-button").css("opacity","1");
        });
        $(".valve-table tr").mouseout(function(obj){
            var tr = $(obj.currentTarget)[0];
            $(tr).find(".operation-button").css("opacity","0");
        });

        $("#table_search").keyup(function(){
            var keyword = $("#table_search").val();
            var trs = $(".valve-table tbody tr");
            for(var i = 0;i<trs.length;i++){
                $(trs[i]).hide();
                var tds = $(trs[i]).find("td");

                for(var j = 0;j<tds.length;j++){
                    var tmpHtml = new String(tds[j].innerHTML);
                    if(tmpHtml.match(keyword)){
                        $(trs[i]).show();
                        break;
                    }
                }
            }
        });

    });
</script>

<c:import url="htmlframe/footerFrame.jsp" />

</body>
</html>