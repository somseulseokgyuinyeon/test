<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>
.reply_btn, .reply_insert_btn {
	color: #262626;
	background: #fff;
	border: 1px solid #999;
}

.review_btn {
	float: right;
	margin-top: 4px;
}

.reviewlist {
	border-top: 1px solid #ccc;
}

.user_info .board_pro {
	margin-top: 20px;
}

.list_star img {
	width: 110px;
	float: left;
}

.review_insert {
	margin-bottom: 10px;
}

#reply_pro {
	background-image: url('../cb_Detail/image/pro.png');
	background-size: 100%;
	border-radius: 50%;
	width: 40px;
	height: 40px;
	margin: 10px auto;
}

.reply_list {
	border-top: 1px solid #ddd;
	width: 100%;
	background: rgb(247, 247, 247);
}

.reply_content {
	margin-top: 10px;
}

.reply_insert {
	width: 100%;
	border-top: 1px solid #ddd;
	background: rgb(247, 247, 247);
}

.reply_insert tr td textarea {
	resize: none;
}

.reply_btn, .reply_insert_btn {
	margin: 4px 0px;
}
.review {
	margin-bottom: 50px;
}

@media ( max-width : 570px) {
	.reply_list td:first-child, .reply_insert td:first-child {
		width: 60px;
	}
	.reply_list td:nth-child(2), .reply_insert td:nth-child(2) {
		width: 100px;
	}
	.reply_content_td, .reply_insert td:last-child {
		width: 400px;
	}
}

@media screen and (max-width: 995px) and (min-width: 569px) {
	.reply_list td:first-child, .reply_insert td:first-child {
		width: 20px;
	}
	.reply_list td:nth-child(2), .reply_insert td:nth-child(2) {
		width: 100px;
	}
	.reply_content_td, .reply_insert td:last-child {
		width: 600px;
	}
}
</style>

<script type="text/javascript">
	$(function() {
		$(".reply_wrap").hide();
		$(".reply_btn").click(function() {
				var btn_id = $(this).attr("id");
				btn_id = btn_id.split("_");
				if($(this).html() == "��&nbsp;&nbsp;&nbsp;��") {
					$(this).html("��&nbsp;&nbsp;&nbsp;��");
					$("#reply_" + btn_id[2]).slideUp("500");
				}
				else {
					$("#reply_" + btn_id[2]).slideDown("500");
					$(this).html("��&nbsp;&nbsp;&nbsp;��");
				}
		});
	});
</script>

</head>
<body>
	<div class="review">
		<h2>Review</h2>
		<div class="review_insert">
			<table>
				<!-- ����� ���� & ���� ���� -->
				<tr>
					<td width="10%" class="text-center">
						<div id="board_pro"></div>
						<div class="pro_name">
							<!-- ����� �г��� -->
							USER
						</div>
					</td>
					<td width="90%"><textarea class="form-control" rows="5"
							cols="100%"></textarea></td>
					<!-- ���� & ��ư -->
				</tr>
				<td>
					<div class="list_star">
						<!-- �����ֱ� -->
						<img src="../cb_Detail/image/rating.png">
					</div>
				</td>
				<td class="text-right">
					<div class="star_insert">
						<input type="button" class="btn review_btn"
							value="��&nbsp;&nbsp;&nbsp;&nbsp;��" />
					</div>

				</td>
				<tr>

				</tr>
			</table>

		</div>

		<!-- ���� ����Ʈ -->
		<div class="review_reply">
			<c:forEach var="i" begin="1" end="5">
				<table class="reviewlist">
					<!-- ����� ���� & ���� -->
					<tr>
						<td width="10%" class="text-center user_info">
							<div id="board_pro"></div>
							<div class="pro_name">
								<!-- ����� �г��� -->
								����г���
							</div>
						</td>
						<td width="90%" class="text-left">
							<div class="review_content">
								<p>
									�� ���� ���� �ٳ�Դµ���....<br> ������� �ʹ� ģ���ϼ̴µ� �˹ٻ����� �Ŵ��������� �𸣰�����..<br>
									�ʹ� ��ģ���߾��...��� ���� ����ٰ� ��� ����ä�� ���Գ׿�..<br> �˹ٻ��� �ƴϸ� �ʹ�
									������� ���Դϴ�!!! ���� �泲����׿�!!! �����찳��
								</p>
							</div>
						</td>
					</tr>

					<!-- ���� & ��� ��ư -->
					<tr>
						<td width="10%" class="text-center">
							<div class="star list_star">
								<img src="../cb_Detail/image/rating.png">
								<h4>5.0</h4>
							</div>
						</td>
						<td width="90%" class="text-right"><span>
								<!-- �����ϳ�¥ -->2017-12-15&nbsp;&nbsp;&nbsp;
						</span> <button class="btn reply_btn" id="reply_btn_${i }">��&nbsp;&nbsp;&nbsp;��</button></td>
					</tr>
				</table>
				<!-- ���� ����Ʈ & ���� ��� -->
				<div class="reply_wrap" id="reply_${i }">
					<c:forEach var="j" begin="1" end="3">
						<!-- ���� ����Ʈ -->
						<table class="reply_list">
							<!-- ����� ���� & ���� -->
							<tr>
								<td widht="3%" class="reply_tab"></td>
								<td rowspan="2" width="100px"
									class="text-center user_info reply_user">
									<div id="reply_pro"></div>
									<div class="reply_name">
										<!-- ����� �г��� -->
										����г���
									</div>
								</td>
								<td width="87%" class="text-left reply_content_td">
									<div class="reply_content">
										<p>�� ���� ��������? �ҹ��� ���ζ����...!!!</p>
									</div>
								</td>
							</tr>

							<!-- ���� & ��� ��ư -->
							<tr>
								<td colspan="2"></td>
								<td width="87%" class="text-right"><span>
										<!-- �����ϳ�¥ -->2017-12-15&nbsp;&nbsp;&nbsp;
								</span> <button class="btn reply_btn">��&nbsp;&nbsp;&nbsp;��</button></td>
							</tr>
						</table>
					</c:forEach>

					<!-- ���� ��� -->
					<table class="reply_insert">
						<!-- ����� ���� & ���� -->
						<tr>
							<td widht="3%" class="reply_tab"></td>
							<td rowspan="2" width="100px"
								class="text-center user_info reply_user">
								<div id="reply_pro"></div>
								<div class="reply_name">
									<!-- ����� �г��� -->
									����г���
								</div>
							</td>
							<td width="87%" class="text-left reply_content_td">
								<div class="reply_content">
									<textarea class="form-control" rows="2"></textarea>
								</div>
							</td>
						</tr>

						<!-- ���� & ��� ��ư -->
						<tr>
							<td colspan="2"></td>
							<td width="87%" class="text-right"><input type="button"
								class="btn reply_insert_btn" value="��&nbsp;&nbsp;&nbsp;��" /></td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>