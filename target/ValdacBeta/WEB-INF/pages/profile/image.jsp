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

    <div class="box box-solid">
        <div class="box-body no-padding">
            <div class="form-group" style="margin-bottom:0px">
                <div class="row">
                    <div class="col-md-6 col-xs-6">
                        <div class="row">
                            <div class=" col-md-8 col-xs-12 btn-group">
                                <a href="/profile/getUserProfile" class="btn btn-default btn-flat">profile</a>
                                <a href="/profile/getUserProfileImage" class="btn btn-default btn-flat bg-navy">画像更新</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


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
        <form role="form" class="box-body-form"  method="post" action="/profile/updateUserProfileImage">
            <!-- collection -->

            <div class="col-lg-12">
                <div class="box box-primary">
                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="イメージ画像"/>
                                    </div>
                                    <div class="col-md-10">
                                        <img src="/img/profile/${user.profile}" id="userImage" class="img-circle" alt="User Image" width="215px" height="215px"/>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-2">
                                        <input type="button" class="btn btn-primary"  value="画像アップ"/>
                                    </div>
                                    <div class="col-md-10">
                                        <input type="file" id="imagename" name="imagename" class="form-control">
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

    <%--image cache
    var url="http://drive.google.com/uc?export=view&id=${user.profile}";
//    alert(url);
    var img=new Image();
    img.src=url;

    if(img.complete){
//        alert("eee");
    }else{
        img.onload=function(){
        }
    }
//upload to google
    $(document.getElementById("imagename")).change(function(){
        var imagename=document.getElementById("imagename").value;
        var pos=imagename.lastIndexOf("\\");
        imagename=imagename.substring(pos+1,imagename.length);
        $.get("/imageDriveUpload?upfile="+imagename,function(data){
            var url=data;
            window.open(url,"test","width=210,height=210");
            window.close();
        });
    });
    --%>
    $(document.getElementById("imagename")).change(function(){
        var imagename=document.getElementById("imagename").value;
//        alert(imagename);
        var pos=imagename.lastIndexOf("\\");
        imagename=imagename.substring(pos+1,imagename.length);
//        alert(imagename);
        $.get("/updateUserProfileImage?imagename="+imagename,function(data){
        });
    });


</script>

<c:import url="../htmlframe/footerFrame.jsp" />


</body>
</html>