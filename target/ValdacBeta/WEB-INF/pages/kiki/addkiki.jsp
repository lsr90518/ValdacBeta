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

<link type="text/css" rel="stylesheet" href="/css/kiki.css"/>

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
                <small>機器情報登録</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/"><i class="fa fa-dashboard"></i> Index</a></li>
                <li class="active"><a href="/item/${valve.kikiSysId}">${valve.benMeisyo}</a></li>
                <li>機器情報登録</li>
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
                <form action="/item/${valve.kikiSysId}/${kiki.kikiId}/edit" id="KikiForm" name="KikiForm" method="post">
                    <div class="box box-primary box-solid box-kiki">
                        <div class="box-header box-panel">
                            <h3 class="box-title">${kiki.kikiMei}の機器情報</h3>
                        </div>
                        <div class="box-body" style="display: none">


                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    機器分類
                                                </div>
                                                <div class="col-md-10">
                                                    <select name="kikiBunrui" class="form-control">
                                                        <option>${kiki.kikiBunrui}</option>
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
                                                    <input type="text" name="kikiNo" class="form-control" value="${kiki.kikiNo}" />
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="button" class="btn btn-default" value="機器名称" />
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="kikiMei" class="form-control" value="${kiki.kikiMei}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="button" class="btn btn-default" value="主管係" />
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="syukan" class="form-control" value="${kiki.syukan}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <input type="button" class="btn btn-default" value="メーカー" />
                                                </div>
                                                <div class="col-md-3">
                                                    <input type="text" name="makerRyaku" class="form-control" placeholder="略称" value="${kiki.makerRyaku}" />
                                                </div>
                                                <div class="col-md-7">
                                                    <input type="text" name="maker" class="form-control" value="${kiki.maker}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    型式番号
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="katasikiNo" class="form-control" value="${kiki.katasikiNo}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    シリアル番号
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="serialNo" class="form-control" value="${kiki.serialNo}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    オーダー番号
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="orderNo" class="form-control" value="${orderNo}" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    備考
                                                </div>
                                                <div class="col-md-10">
                                                    <input type="text" name="bikou"class="form-control" value="${bikou}" />
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
                    </div>
                            <div class="box box-solid">
                                <div class="box-body clearfix">
                                    <div class="form-group">

                                        <a class="btn btn-danger" href="/item/${valve.kikiSysId}/${kiki.kikiId}/delete">
                                            <i class="fa fa-refresh"></i> 削除
                                        </a>

                                        <button class="btn btn-success pull-right">
                                            <i class="fa fa-save"></i> 更新
                                        </button>
                                    </div>
                                </div>
                            </div>


                </form>
                <div class="box box-warning">
                    <div class="box-header box-panel">
                        <h3 class="box-title">部品情報一覧</h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-8">
                                <button class="btn btn-warning" data-toggle="modal" data-target=".content-modal">追加</button>
                            </div>
                        </div>
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover kiki-table">
                                <tbody><tr>
                                    <th>部品名</th>
                                    <th>部品区分</th>
                                    <th>使用箇所</th>
                                    <th>資材名</th>
                                    <th>メーカー(略)</th>
                                    <th>品番</th>
                                    <th>標準仕様</th>
                                    <th>操作</th>
                                </tr>
                                <c:forEach items="${buhinList}" var="tmpbuhin">
                                    <tr>
                                        <td>${tmpbuhin.buhinMei}</td>
                                        <td>${tmpbuhin.buhinKbn}</td>
                                        <td>${tmpbuhin.siyouKasyo}</td>
                                        <td>${tmpbuhin.sizaiName}</td>
                                        <td>${tmpbuhin.maker}(${tmpbuhin.makerRyaku})</td>
                                        <td>${tmpbuhin.hinban}</td>
                                        <td>${tmpbuhin.hyojunSiyou}</td>

                                        <td>
                                            <div class="operation-button">
                                                <a class="btn btn-danger btn-sm operation-button-btn" href="/item/${valve.kikiSysId}/${kiki.kikiId}/${tmpbuhin.buhinId}/delete"><i class="fa fa-trash-o"></i></a>
                                                <a class="btn btn-warning btn-sm operation-button-btn" href="/item/${valve.kikiSysId}/${kiki.kikiId}/${tmpbuhin.buhinId}"><i class="fa fa-arrow-right"></i></a>

                                            </div>
                                        </td>
                                    </tr>

                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </div>
        </div><!-- insert -->

        <!-- add content modal -->
        <div id="kiki-modal" class="modal fade content-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <form action="/item/${valve.kikiSysId}/${kiki.kikiId}/add" id="buhinForm" name="BuhinForm" method="post">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="myModalLabel">部品登録</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        部品区分
                                    </div>
                                    <div class="col-md-10">
                                        <select name="buhinKbn" class="form-control">
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
                                        <input type="text" name="siyouKasyo" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="部品名" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="buhinMei" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="標準仕様" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="hyojunSiyou" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        概略寸法
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" name="sunpou" class="form-control" />
                                    </div>
                                    <div class="col-md-2">
                                        数量
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" name="suryo" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        備考
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="bikou" class="form-control" />
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
                                        <input type="button" class="btn btn-default" value="資材名" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="sizaiName" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-default" value="品番" />
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" name="hinban" class="form-control" />
                                    </div>
                                </div>
                            </div>

                            <hr/>

                            <div class="form-group">
                                <input type="hidden" name="imageId" value="" />
                                <div class="row">
                                    <div class="col-md-2">備考</div>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" name="buhinzuBikou" />
                                    </div>
                                </div>
                            </div>
                            <input type="file" />

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-warning" value="登録" />
                        </div>
                    </div>
                </div>
            </form>
        </div>



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


<c:import url="../htmlframe/leftFrame.jsp" />

</body>
</html>