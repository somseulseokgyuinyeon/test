<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ����</title>

<!-- fotorama -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- 33 KB -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<!-- 3 KB -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<!-- 16 KB -->

<style type="text/css">
#bg_img {
	margin: 0px auto;
	width: 100%;
	height: 480px;
	background-image: url('../cb_Detail/image/1010.jpg');
	position: absolute;
	left: 0;
	top: 0;
}

.fotorama {
	margin: 0px auto;
}

.cb_title {
	height: 30px;
	float: left;
	margin-top: 15px;
}

.like_img {
	margin-top: 20px;
	width: 40px;
	margin-left: 20px;
}

.cb_title span {
	color: #fff;
	padding-left: 20px;
	font-size: 35px;
	font-weight: bold;
}

.cb_black {
	background: #000;
	opacity: 0.5;
	width: 100%;
	height: 480px;
	position: absolute;
	left: 0;
	top: 0;
}

.cb_wrap {
	position: relative;
	width: 100%;
	height: 480px;
	left: 0;
	top: 0;
}

.cb_main {
	position: relative;
	z-index:100
}
.like img, .hit img {
	width:20px;
}
.rating img {
	width:70px;
}

.rating h2{
	margin-bottom:9px;
}

.like, .rating, .hit {
	padding:5px 40px;
	height:100px;
	margin-top: 50px;
	border-left: 6px solid rgb(162,0,0); 
	margin-bottom:4px;
}
.hit {
	height:100px;
	border-right: 6px solid rgb(162,0,0); 
}
.like b, .rating b, .hit b {
	font-size:14px;
} 
.cb_info_table {
	margin: 0px auto;
}
.cb_detail p {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 60px;
	border-bottom: 2px solid #bbb;
}
.cb_detail {
	margin: 0px auto;
	margin-top: 100px;
	width:1130px;
}


.map_motel {
	margin-top: 70px;
}
.map h2 {
	font-weight: bold;
	padding-bottom:10px;
	border-bottom: 2px solid #bbb;
}
.map_img {
}
.map_img img{
	width:100%;
	height:320px;
	margin:0px auto;
	margin-bottom:20px;
}

.motel {
	margin-top: 70px;
}
.motel h2 {
	font-weight: bold;
	padding-bottom:10px;
	border-bottom: 2px solid #bbb;
}
.motel .motel_detail .motel_img{
	width: 100%;
	height: 220px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
.motel .motel_detail {
	margin-bottom: 10px;
	width:100%;
	height:220px;
	position:relative;
	margin-bottom:20px;
}
div.motel_info {
	position: absolute;
	width: 100%;
	text-align:center;
	margin:0px auto;
	top:30px;
}
div.motel_info h3 {
	color: white;
	font-size: 32px;
	font-weight: bold;
	margin-bottom:30px;
}
div.motel_info p {
	color: white;
	font-size: 20px;
	margin-top: 12px;
}
.cb_motel_black {
	background: #000;
	opacity: 0.5;
	width: 100%;
	height: 220px;
	position: absolute;
	left: 0;
	top: 0;
}
.review_wrap {
	margin-top: 70px;
}
.review h2 {
	font-weight: bold;
	padding-bottom:10px;
	border-bottom: 2px solid #bbb;
}
.review_insert {
	width:100%;
	height:150px;
}
#board_pro {
    background-image: url('../cb_Detail/image/pro.png');
    background-size: 100%;
    border-radius: 50%;
    width: 70px;
    height: 70px;
    margin:10px auto;
}
.pro_name {
    margin-top: 13px;
}
.profile {
    line-height: 100px;
}

.review_btn {
	width:100px;
	background: rgb(162,0,0);
	color: #fff;
	font-size: 17px;
}
.review_btn:hover, .review_btn:focus {
	color:#fff;
}
.review_insert table {
	width:100%;
	height:150px;
}
.review_insert table textarea {
	resize: none;
}
.star img {
	width:10r0%;
}
.reviewlist {
	width:100%;
}
.reviewlist th td {
	vertical-align: middle;
	line-height: 100%;
	padding-top: 70px;
}
.review_content {
	margin-left: 20px;
	padding:20px 0px;
}
@media (max-width: 509px) {
  .cb_info_table {
  	width:247px;
  }
  .like, .rating, .hit{
  	padding: 5px 5px;
  }
  .like h2,.rating h2,.hit h2 {
  	font-size:20px;
  	font-weight: bold;
  }
  .cb_detail p {
  	font-size: 20px;
  }
}

@media (max-width: 1100px) {
	.cb_detail {
		width:90%;
	}
}
</style>
</head>
<body>
	<div class="container-fluid">
	
		<div class="cb_main">
			<div id="bg_img"></div>
			<div class="cb_black"></div>
			<div class="cb_wrap">
				<div class="cb_title">
					<!-- ���� �̸� -->
					<span>ȫ�� �ƿ��</span>
				</div>
				<div class="cb_like">
					<!-- �� ������ -->
					<a href="#"><img class="like_img" src="../cb_Detail/image/like.png"/></a>
				</div>
				<div data-width="100%" data-height="350px"
					data-transition="crossfade" class="fotorama" data-nav="thumbs"
					data-loop="true" data-autoplay="2000" data-fit="scaledown">
					<!-- ���� ���� ����� �� ��ŭ -->
					<img src="../cb_Detail/image/123.jpg"> <img
						src="../cb_Detail/image/456.jpg"> <img
						src="../cb_Detail/image/789.png"> <img
						src="../cb_Detail/image/1010.jpg">
				</div>
			</div>
		</div>
	</div>
	
		<div class="container">
			<div class="cb_info container">
				<!-- ����/��/��ȸ�� �����ֱ� -->
				<table class="cb_info_table">
					<tr>
						<td>
							<div class="rating text-center">
								<h2>4.1<!-- ���� --></h2>
								<img src="../cb_Detail/image/rating.png"><!-- ���� ���� �� -->
								<p><b>12����</b></p>
							</div>
						</td>
						<td>
							<div class="like text-center">
								<h2>1246<!-- �򰹼� --></h2>
								<img src="../cb_Detail/image/like.png"><b>��</b>
							</div>
						</td>
						<td>
							<div class="hit text-center">
								<h2>4766</h2>
								<img src="../cb_Detail/image/hit_icon.png"><b>��ȸ��</b>
							</div>
						</td>
					</tr>
				</table>
				
				<!-- ���� �� ���� -->
				<table class="cb_detail">
					<tr class="cb_detail_addr">
						<td class="text-left" colspan="1">
							<img src="../cb_Detail/image/map_icon.png"><p>��õ������ ������ ����2�� �켺2������Ʈ 213�� 802ȣ</p>
						</td>
					</tr>
					<tr class="cb_detail_time">
						<td class="text-left">
							<img src="../cb_Detail/image/time_icon.png">
							<p>
								OPEN &nbsp;&nbsp;18 : 00<br>
								CLOSE &nbsp;&nbsp;09 : 00
							</p>
						</td>
					</tr>
					<tr class="cb_detail_tel">
						<td class="text-left" colspan="2">
							<img src="../cb_Detail/image/phone_icon.png">
							<p>02 - 1111 - 1111</p>
						</td>
					</tr>
					<tr class="cb_detail_intro">
						<td class="text-left" colspan="2">
							<img src="../cb_Detail/image/text_icon.png">
							<p>
								�ȳ��ϼ��� ȫ�� �ƿ�� �Դϴ�!<br>
								���̵� ���ּ���~~~<br>
								�̺�Ʈ �ǿ��� ���� �����ϰ� �ִ� �̺�Ʈ�� �ǽð�����<br>
								Ȯ���� �� ������ ���� ���� ��Ź�����ٵ� �ƽð���? ���� ���� ���� Ŭ���� �ͺ�����!!! �ٵ� �ͼ� ��̰� ��ƿ�~~��~~<br>
							</p>
						</td>
					</tr>
				</table>
			</div>
			<div class="container map_motel">
				<div class="map">
					<h2>����</h2>
					<div class="map_img">
						<!-- ���� �ҷ�����(API) -->
						<img src="../cb_Detail/image/mapimg.PNG">
					</div>
				</div>
				<div class="motel">
					<h2>�ֺ� ����</h2>
					<c:forEach var="i" begin="1" end="2">
						<div class="motel_detail">
							<div class="motel_img" style="background-image: url('../cb_Detail/image/motel1.jpg');"></div>
							<div class="cb_motel_black"></div>
							<div class="motel_info">
								<h3>ȫ�� �� �����̳ʽ�</h3>
								<p>���� ������ ������ 373-9</p>
								<p>050430901337</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			
			<!-- ���� -->
			<div class="container review_wrap">
				<jsp:include page="../cb_Detail/review.jsp"></jsp:include>
			</div>
		</div>
</body>
</html>