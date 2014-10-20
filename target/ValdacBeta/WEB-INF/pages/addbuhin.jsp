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

<link type="text/css" rel="stylesheet" href="/css/buhin.css"/>

<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
<c:import url="htmlframe/headerFrame.jsp" />
<div class="wrapper row-offcanvas row-offcanvas-left">
<!-- Left side column. contains the logo and sidebar -->
<c:import url="htmlframe/leftFrame.jsp" />

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
            <li><a href="/valve">${valve.benMeisyo}</a></li>
            <li class="active"><a href="/kiki">${kiki.kikiMei}</a></li>
            <li>部品情報登録</li>
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


                <div class="box-body" style="display: none">
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


                </div><!-- /.box-body弁情報 -->
            </div>

            <div class="box box-solid box-success">
                <div class="box-header box-panel">
                    <h3 class="box-title">${kiki.kikiMei}の機器情報</h3>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-2">機器分類</div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2">分類連番</div>
                            <div class="col-md-2"></div>
                            <div class="col-md-2">機器名称</div>
                            <div class="col-md-2"></div>
                        </div>
                    </div>
                </div>
            </div>

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
                                            <a class="btn btn-primary btn-sm operation-button-btn"><i class="fa fa-pencil"></i></a>
                                            <a class="btn btn-danger btn-sm operation-button-btn"><i class="fa fa-trash-o"></i></a>
                                            <input type="hidden" class="buhinId" value="${tmpbuhin.buhinId}"/>
                                        </div>
                                    </td>
                                </tr>

                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="box box-solid">

            <div class="box-body clearfix">
                <div class="form-group">
                    <a class="btn btn-success pull-right" href="/">
                        <i class="fa fa-save"></i> 完成
                    </a>
                </div>
            </div>
        </div>
        </div>
    </div><!-- insert -->

    <!-- add content modal -->
    <div id="buhin-modal" class="modal fade content-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <form action="/buhin/add" id="buhinForm" name="BuhinForm" method="post">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">部品登録</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="kikiSysId" value="${kiki.kikiSysId}" />
                        <input type="hidden" name="kikiId" value="${kiki.kikiId}" />
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


    <!-- update content modal -->
    <div id="buhin-update-modal" class="modal fade udpate-content-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <form action="/buhin/update" id="buhinUpdateForm" name="BuhinForm" method="post">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title">部品登録</h4>
                    </div>
                    <div class="modal-body">

                        <input type="hidden" name="kikiId" id="kikiId" value="${kiki.kikiId}" />
                        <input type="hidden" name="buhinId" id="update-buhinId" value="1" />
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    部品区分
                                </div>
                                <div class="col-md-10">
                                    <select name="buhinKbn" id="buhinKbn" class="form-control">
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
                                    <select name="asbKbn" id="asbKbn" class="form-control">
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
                                    <input type="text" id="siyouKasyo" name="siyouKasyo" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <input type="button" class="btn btn-default" value="部品名" />
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="buhinMei" name="buhinMei" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <input type="button" class="btn btn-default" value="標準仕様" />
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="hyojunSiyou" name="hyojunSiyou" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    概略寸法
                                </div>
                                <div class="col-md-6">
                                    <input type="text" id="sunpou" name="sunpou" class="form-control" />
                                </div>
                                <div class="col-md-2">
                                    数量
                                </div>
                                <div class="col-md-2">
                                    <input type="text" id="suryo" name="suryo" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    備考
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="bikou" name="bikou" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <input type="button" class="btn btn-default" value="メーカー" />
                                </div>
                                <div class="col-md-3">
                                    <input type="text" id="makerRyaku" name="makerRyaku" class="form-control" placeholder="略称" />
                                </div>
                                <div class="col-md-7">
                                    <input type="text" id="maker" name="maker" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <input type="button" class="btn btn-default" value="資材名" />
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="sizaiName" name="sizaiName" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2">
                                    <input type="button" class="btn btn-default" value="品番" />
                                </div>
                                <div class="col-md-10">
                                    <input type="text" id="hinban" name="hinban" class="form-control" />
                                </div>
                            </div>
                        </div>

                        <hr/>

                        <div class="form-group">
                            <input type="hidden" name="imageId" value="" />
                            <div class="row">
                                <div class="col-md-2">備考</div>
                                <div class="col-md-10">
                                    <input type="text" class="form-control" id="buhinzuBikou" name="buhinzuBikou" />
                                </div>
                            </div>
                        </div>
                        <input type="file" />

                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-warning" value="更新" />
                    </div>
                </div>
            </div>
        </form>
    </div>


    <form id="delete-form" action="/buhin/delete" method="post">
        <input type="hidden" id="delete-id" name="buhinId" value="" />
    </form>

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

        $(".operation-button-btn").click(function(){
            var operation = $($(this)[0]).find("i");
            var operationStr = new String(operation[0].className);
            var buhinId = $($(this)[0]).siblings(".buhinId")[0].value;
            if(operationStr == "fa fa-pencil"){
                //edit
                $.getJSON("/buhin/getBuhinByBuhinId",{buhinId:buhinId},function(data){
                    $("#update-buhinId").val(data.buhinId);
                    $("#kikiId").val(data.kikiId);
                    $("#buhinKbn").html("<option>"+data.buhinKbn+"</option>"+$("#buhinKbn").html());
                    $("#asbKbn").html("<option>"+data.asbKbn+"</option>"+$("#asbKbn").html());
                    $("#buhinMei").val(data.buhinMei);
                    $("#hyojunSiyou").val(data.hyojunSiyou);
                    $("#siyouKasyo").val(data.siyouKasyo);
                    $("#sizaiName").val(data.sizaiName);
                    $("#hinban").val(data.hinban);
                    $("#sunpou").val(data.sunpou);
                    $("#makerRyaku").val(data.makerRyaku);
                    $("#maker").val(data.maker);
                    $("#orderNo").val(data.bikou);
                    $("#buhin-update-modal").modal('show');
                });

            } else if(operationStr == "fa fa-trash-o") {
                //delete
                $("#delete-id").val(buhinId);
                $("#delete-form").submit();
            }
        });
    });
</script>

<c:import url="htmlframe/footerFrame.jsp" />
</body>
</html>