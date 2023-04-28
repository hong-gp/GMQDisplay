<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<html lang="ko">
<head>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("sid");

	try {
		String db_url = "jdbc:mysql://localhost:3306/gpqd";
		String db_id = "root";
		String db_password = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(db_url, db_id, db_password);

		// 상품 조회
		String sql = "SELECT * FROM product"; 
		PreparedStatement pstmt = con.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		int num = 0;
		DecimalFormat df = new DecimalFormat("###,###");
		while(rs.next()) {
			// 리뷰 평점, 개수
			String sql_review = "SELECT * FROM review WHERE Mno=?";
			PreparedStatement pstmt_review = con.prepareStatement(sql_review);
			pstmt_review.setString(1, rs.getString("Mno"));

			ResultSet rs_review = pstmt_review.executeQuery();

			int total = 0;
			int cnt = 0;
			double rating = 0;

			while(rs_review.next()) {
			total += rs_review.getInt("review_rating");
			cnt++;
			}
			if (cnt == 0)
				rating = 0;
			else
				
			rating = (double)total / cnt;
			DecimalFormat df_rating = new DecimalFormat("#.#");
			String format_rating = df_rating.format(rating);
			num++;
%>
								<li class="item" id="li-prd-<%=rs.getString("Mno")%>">
									<form name="form<%=rs.getString("Mno")%>" id="form<%=rs.getString("Mno")%>" method="post">
										<input type="hidden" name="Mno" value="<%=rs.getString("Mno")%>" />
									</form>
									<div class="item-inner" data-omni="<%=rs.getString("Mno")%>|<%=rs.getString("Mno")%>">
										<div class="ins-badge-area-c1228"><span style="float:right"></span></div>
										<div class="ins-badge-area-c1236"><span style="float:right"></span></div>
										<div class="card-flag" style="height: 23px;">
											<span><%=rs.getString("Mgenre")%></span>
											<%
											if (id != null) {
												String sql_wish = "SELECT * FROM wishlist WHERE userID=? AND Mno=?"; 
												PreparedStatement pstmt_wish = con.prepareStatement(sql_wish);
												pstmt_wish.setString(1, id);
												pstmt_wish.setString(2, rs.getString("Mno"));

												ResultSet rs_wish = pstmt_wish.executeQuery();
												if (rs_wish.next()) {
											%>
												<button title="" type="submit" class="btn-good on" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 선택</i>
												</button>
											<%
												} else {
											%>
												<button title="" type="submit" class="btn-good" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 미선택</i>
												</button>
											<%
												}
											} else {
											%>
												<button title="" type="button" class="btn-good" form="form<%=rs.getString("Mno")%>" data-goods-id="<%=rs.getString("Mno")%>" onClick="location.href='./login_info/login.html';">
													<i class="icon ico-large ico-goods ico<%=rs.getString("Mno")%>">좋아요 미선택</i>
												</button>
											<%
											}
											%>
											<div class="bookmarkTooltip flashTooltip bookmarkOn bookmarkOn<%=rs.getString("Mno")%>" style="display: none;">
												<div>
													<p><span>찜</span>이 되었습니다.</p><a href="javascript:void(0);"
														class="btn-underline">전체보기</a>
												</div>
											</div>
											<div class="bookmarkTooltip flashTooltip bookmarkOff bookmarkOff<%=rs.getString("Mno")%>">
												<div>
													<p><span>찜</span>이 취소되었습니다.</p>
												</div>
											</div>
										</div> <!-- 마우스 오버시 이미지 순차교체  --><a
											href="./product/<%=rs.getString("Mno")%>.jsp"
											onclick="netFunnel_Action_PF('./static/images/product/<%=rs.getString("Mno")%>_1.png');return false;"
											class="card-img"
											data-image-src="['//images.samsung.com/kdp/goods/2023/02/03/e2186039-ca36-4b0a-be72-97709b57a64a.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/4b7e8b36-5ddb-4328-9693-9387d4fe6aa1.png?$PF_PRD_PNG$', '//images.samsung.com/kdp/goods/2023/02/03/420e46ce-c182-4e7f-9f29-0b3045c3ab5b.png?$PF_PRD_PNG$']"
											style="height: 224px;"> <img
												src="./static/images/product/<%=rs.getString("Mno")%>_1.png"
												alt="<%=rs.getString("Mname")%>"></a>
										<div class="card-opt" style="height: 13px;">
											<div class="pf-color-sel">
												<div class="option-slick">
													<ol class="itm-color-list swiper-wrapper">
														<li class="swiper-slide"> <input type="radio"
																id="itm-color-1001-G000291183"
																name="itm-color-LS27BM502EK-SP" checked="checked"
																onclick="fnGetPfPrd('G000291183', 'li-prd-G000291183', 'itm-color-1001-G000291183')">
															<!-- <label for="itm-color-1001-G000291183"><span
																	class="itm-color-object opt-checked"
																	style="background-color:#000000;"
																	data-omni="color_BLACK|LS27BM502EK-SP|LS27BM502EK-SP">블랙</span></label> -->
														</li>
													</ol>
													<div class="slide-nav"> <button type="button"
															class="btn-prev">이전</button> <button type="button"
															class="btn-next">다음</button> </div>
												</div>
											</div>
										</div>
										<div class="card-option" style="height: 10px;"></div>
										<div class="card-detail" style="height: 68px;"> <span class="prd-name"
												title="The Freestyle + 스마트 모니터 68.6 cm 패키지"><%=rs.getString("Mname")%></span> <span class="prd-num"><%=rs.getString("Mno")%></span> </div>
										<div class="card-price" style="height: 61px;">
											<div class="list-price"> <span>기준가</span> <em><%=df.format(Integer.parseInt(rs.getString("Mprice")))%> 원</em> </div>
											<div class="price-detail"> <span class="coupon">혜택가</span>
												<div class="pic"> <em><%=df.format(Integer.parseInt(rs.getString("Msale")))%></em><span class="unit">원</span> <button
														type="button" class="btn-downtool" aria-hidden="true"><span
															class="blind">툴팁보기(레이어열림)</span></button> <!-- s : 툴팁 -->
													<div class="box-tip" aria-hidden="true">
														<ul>
															<li><span class="tit">기준가</span><span
																	class="price"><%=df.format(Integer.parseInt(rs.getString("Mprice")))%>원</span></li>
															<li class="total">
																<div class="coupon-price"><span
																		class="tit">혜택가</span><span
																		class="price"><%=df.format(Integer.parseInt(rs.getString("Msale")))%>원</span></div>
															</li>
														</ul>
													</div> <!-- e : 툴팁 -->
												</div>
											</div>
											<div class="point-detail"> <span class="expect">적립 예정 포인트</span> <span
													class="point"><%=(Integer.parseInt(rs.getString("Msale")))/100%>P</span> </div>
										</div>
										<div class="card-btn" style="height: 44px;"> <!-- 200723 href 속성 삭제 --><a href="./product/<%=rs.getString("Mno")%>.jsp"><button
												type="button" class="btn btn-d btn-type2"
												onclick="netFunnel_Action_PF('./product/<%=rs.getString("Mno")%>.jsp');return false;"
												data-omni="">구매하기</button></a> </div>
										<div class="card-purchase" style="height: 110px;">
											<ul class="message-list">
												<li class="message-list-item"><%=rs.getString("Mfeatures1")%></li>
												<li class="message-list-item"><%=rs.getString("Mfeatures2")%></li>
												<li class="message-list-item"><%=rs.getString("Mfeatures3")%></li>
											</ul>
											<div class="compare"> <a href="javascript:void(0);" class="link-compare-i"
													onclick="readyCompare(this)" data-goods-id="G000291183"
													data-mdl-code="LS27BM502EK-SP" data-disp-clsf-no="39030000"
													data-comp-disp-clsf-en-nm="monitors"
													data-omni="LS27BM502EK-SP|LS27BM502EK-SP">비교하기</a> <a
													class="link-review"
													href="/sec/monitors/package-smart-ls27bm502ek-sp-dc2/LS27BM502EK-SP/?focus=review"
													title="상품평점"><%=format_rating%> (<%=cnt%>)</a> </div>
										</div>
									</div>
								</li>
<script>
	$('#form<%=rs.getString("Mno")%>').submit(function(event) {
		event.preventDefault();
		$.ajax({
			url: "./xhr/wishlist_insert.jsp",
			type: "POST",
			data: $('#form<%=rs.getString("Mno")%>').serialize(),
			success: function(data) {
				$('.btn-good[data-goods-id="<%=rs.getString("Mno")%>"]').toggleClass('on');
  
				if ($('.btn-good[data-goods-id="<%=rs.getString("Mno")%>"]').hasClass('on')) {
					$('.bookmarkOff<%=rs.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOn<%=rs.getString("Mno")%>').css('display', 'block');
				} else {
					$('.bookmarkOn<%=rs.getString("Mno")%>').css('display', 'none');
					$('.bookmarkOff<%=rs.getString("Mno")%>').css('display', 'block');
				}

				var vTimer = setTimeout((function () {
					$('.bookmarkTooltip').fadeOut(300);
				}), 5000);

				$(document).click(function (e) {
					if ($btnGoods.has(e.target).length === 0) {
						clearTimeout(vTimer);
						$('.bookmarkOn').fadeOut(300);
						$('.bookmarkOff').fadeOut(300);
						btnclass.off();
					}
				});
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log(errorThrown);
			}
		});
	});
</script>
<%
		}
	} catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>