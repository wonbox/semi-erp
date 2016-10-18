<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>
    #top_img{
        height:200px;
        text-align: center;
    }
    #top_information{
        height:100px;
    }
    .footer {
        border-top: 1px solid #eee;
        margin-top: 10px;
        padding-top: 40px;
        padding-bottom: 40px;
    }

</style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <title>㈜개신학용품 ERP</title>
</head>
<body>
<form action="LoginProc.jsp" method="post">
    <div id="top_information"></div>
    <div id="top_img"><img src="./img/title.jpg"></div>

    <table align="center">
        <tr>
            <td></td>
            <td align="center"><h1></h1></td>
            <td></td>
        </tr>
        <tr>
            <td><div class="input-group">
			  <span class="input-group-addon">ID :</span>
			  <input type="text" class="form-control" placeholder="UserID" name="id">
			</div></td>
            <td></td>
        </tr>
        <tr>
           <td><div class="input-group">
			  <span class="input-group-addon">PW :</span>
			  <input type="password" class="form-control" placeholder="UserPW" name="pw">
			</div></td>
            <td><button type="submit" name="select" class="btn btn-default" value="로그인">로그인</button>
               </td>
        </tr>
        <tr>
            <td><button type="submit" name="select" class="btn btn-default" value="회원가입">회원가입</button>
                </td>
            <td></td>
        </tr>
    </table>


    <div class="navbar navbar-default navbar-fixed-bottom" align="center">
        <div class="container">

      </div>
    </div>
   <jsp:include page="/WEB-INF/view/inc/footer.jsp"/>
</form>

</body>
</html>