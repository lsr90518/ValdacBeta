<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="../htmlframe/headFrame.jsp" />
<body class="skin-blue">
<!-- header logo: style can be found in header.less -->
<c:import url="../htmlframe/headerFrame.jsp"/>
<div class="wrapper row-offcanvas row-offcanvas-left">
<!-- Left side column. contains the logo and sidebar -->
    <c:import url="../htmlframe/leftFrame.jsp" />

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            プロフィール情報
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Index</a></li>
            <li class="active">プロフィール修正</li>
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
        <form role="form" class="box-body-form" method="post" action="/profile/updateUserProfile">
            <!-- collection -->

            <div class="col-lg-12">
                <div class="box box-primary">
                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="ユーザ名"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="username" name="username" class="form-control" value=${user.username}>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="パスワード"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="password" name="password" class="form-control" value=${user.password}>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="部署"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="department" name="department" class="form-control" value=${user.department}>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="イメージ画像"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="text" id="profile" name="profile" class="form-control" value=${user.profile}>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.box-body -->

                </div>

                <div class="box box-solid">

                    <div class="box-body clearfix">
                        <div class="form-group">
                            <button class="btn btn-success pull-right">
                                <i class="fa fa-save"></i> 更新
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
                typeName=typeName+data[nIndex].name+'¥n';
            };

            alert(typeName);
        });
    }
</script>

<c:import url="../htmlframe/footerFrame.jsp" />


</body>
</html>