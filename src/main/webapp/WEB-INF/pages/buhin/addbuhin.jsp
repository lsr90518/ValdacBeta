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

<c:import url="../htmlframe/headFrame.jsp" />

<link type="text/css" rel="stylesheet" href="/css/buhin.css"/>

<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
<c:import url="../htmlframe/headerFrame.jsp" />
<div class="wrapper row-offcanvas row-offcanvas-left">
<!-- Left side column. contains the logo and sidebar -->
<c:import url="../htmlframe/leftFrame.jsp" />

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
<!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            新規登録
            <small>部品情報登録</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="/"><i class="fa fa-dashboard"></i> Index</a></li>
            <li><a href="/item/${valve.kikiSysId}">${valve.benMeisyo}</a></li>
            <li class="active"><a href="/item/${valve.kikiSysId}/${kiki.kikiId}">${kiki.kikiMei}</a></li>
            <li>部品情報登録</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <c:if test="${message != null}">
            <div class="row">
                <div class="col-md-12">
                    <div class="alert alert-success alert-dismissable">${message}</div>
                </div>
            </div>
        </c:if>

    <div class="row">
    <!-- collection -->

        <div class="col-lg-12">
            <form action="/item/${valve.kikiSysId}/${kiki.kikiId}/${buhin.buhinId}/edit" id="buhinForm" name="BuhinForm" method="post">
            <div class="box box-solid box-warning">
                <div class="box-header box-panel">
                    <h3 class="box-title">${buhin.buhinMei}の部品情報</h3>
                </div>

                    <div class="box-body">


                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                部品区分
                                            </div>
                                            <div class="col-md-10">
                                                <select name="buhinKbn" class="form-control">
                                                    <option>${buhin.buhinKbn}</option>
                                                    <option>消耗資材</option>
                                                    <option>経年部品</option>
                                                    <option>接管資材</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                アスベスト区分
                                            </div>
                                            <div class="col-md-10">
                                                <select name="asbKbn" class="form-control">
                                                    <option>${buhin.asbKbn}</option>
                                                    <option>アスベスト品</option>
                                                    <option>ノンアスベスト品</option>
                                                    <option>混在品</option>
                                                    <option>対象外</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                使用箇所
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="siyouKasyo" class="form-control" value="${buhin.siyouKasyo}" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-default" value="部品名" />
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="buhinMei" class="form-control" value="${buhin.buhinMei}" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-default" value="標準仕様" />
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="hyojunSiyou" class="form-control" value="${buhin.hyojunSiyou}" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                概略寸法
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" name="sunpou" class="form-control" value="${buhin.sunpou}" />
                                            </div>
                                            <div class="col-md-2">
                                                数量
                                            </div>
                                            <div class="col-md-2">
                                                <input type="text" name="suryo" class="form-control" value="${buhin.suryo}"  />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                備考
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="bikou" class="form-control" value="${buhin.bikou}" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-default" value="メーカー" />
                                            </div>
                                            <div class="col-md-3">
                                                <input type="text" name="makerRyaku" class="form-control" placeholder="略称" value="${buhin.makerRyaku}" />
                                            </div>
                                            <div class="col-md-7">
                                                <input type="text" name="maker" class="form-control" value="${buhin.maker}" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-default" value="資材名" />
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="sizaiName" class="form-control" value="${buhin.sizaiName}" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <input type="button" class="btn btn-default" value="品番" />
                                            </div>
                                            <div class="col-md-10">
                                                <input type="text" name="hinban" class="form-control" value="${buhin.hinban}" />
                                            </div>
                                        </div>
                                    </div>

                                    <hr/>

                                    <div class="form-group">
                                        <input type="hidden" name="imageId" value="" />
                                        <div class="row">
                                            <div class="col-md-2">備考</div>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" name="buhinzuBikou" value="${buhin.buhinzuBikou}" />
                                            </div>
                                        </div>
                                    </div>
                                    <input type="file" />

                    </div>
                </div>


                <div class="box box-solid">
                    <div class="box-body clearfix">
                        <div class="form-group">
                            <a class="btn btn-danger" href="/item/${valve.kikiSysId}/${kiki.kikiId}/${buhin.buhinId}/delete">
                                <i class="fa fa-trash-o"></i> 削除
                            </a>
                            <button class="btn btn-success pull-right">
                                <i class="fa fa-save"></i> 更新
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div><!-- insert -->

    </section><!-- /.content -->
</aside><!-- /.right-side -->
</div><!-- ./wrapper -->


<script type="text/javascript">
    $(document).ready(function(){

        $("#left-menu-new").addClass("active");
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

    });
</script>

<c:import url="../htmlframe/footerFrame.jsp" />
</body>
</html>