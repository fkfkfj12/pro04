<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <style>
    .lead, .subheader { white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
    </style>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="include/hd.jsp"></jsp:include>
</header>
	<hr>
<article class="grid-container">
      <div class="grid-x grid-margin-x">
    
        <div class="medium-7 large-6 cell">
          <a href="${path1 }ceo/ceo.do">KEPCO, 한국전력</a>
          <p class="subheader">한국전력에 늘 따뜻한 관심과 성원을 보내주셔서 고맙습니다. 좋은 일자리 창출, 지역상생, 중소기업과의 동반성장, 어려운 이웃을 살피는 국민의 기업으로서 늘 여러분과 함께 하겠습니다.</p>

        </div>
    
        <div class="show-for-large large-3 cell">
          <img src="https://home.kepco.co.kr/kepco/front/img/sub_r/ceo_img.png" alt="picture of space">
        </div>
    
        <div class="medium-5 large-3 cell">
          <div class="callout secondary">
			<c:if test="${!empty msg }">
			<script>
			alert("로그인 실패");
			document.loginForm.userid.focus();
			</script>
			</c:if>
			<c:if test="${empty sid }">
            <form action="${path1 }/member/loginCheck.do" method="post" name="loginForm">
              <div class="grid-x">
                <div class="small-12 cell">
                  <label>Login ID
                    <input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
                    <!--  pattern="^[a-z0-9]+$"  -->
                  </label>
                </div>
                <div class="small-12 cell">
                  <label>Login PW
                    <input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
                    <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                  </label>
                  <button type="submit" class="button">LOGIN</button>
                  <a href="${path2 }/member/agree.do" class="button" style="float:right;">회원가입</a>
                </div>
              </div>
            </form>
			<script>
			function loginFaiure() {
				alert("로그인 실패");
			}
			</script>
			</c:if>
			<c:if test="${not empty sid }">
             <div class="grid-x" style="height:218px">
                <div class="small-12 cell">
                  <label><strong>${sid }</strong>님 안녕하세요~!</label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;&nbsp;</label>
                </div>
                <div class="small-12 cell">
                  <label>
                  	<c:set var="now" value="<%=new java.util.Date() %>" />
                  	<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" type="date"/>
                  </label>
                </div>
                <div class="small-12 cell">
                  <label><fmt:formatDate value="${now }" pattern="a h:mm" type="date"/></label>
                </div>
                <div class="small-12 cell">
                  <label><span style="display:none">${serverTime }</span></label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;</label>
                </div>
              </div>
			</c:if>
          </div>
        </div>
    
      </div>
    
    <div class="">
      <hr>
    </div>
    
    <div class="">
      <p class="lead">Trending Planetary Destinations</p>
    </div>
    
    <div class="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
      <div class="cell">
        <div class="callout">
          <a href="https://home.kepco.co.kr/kepco/KE/B/htmlView/KEBAHP001.do?menuCd=FN01010101">한전 소개</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/sub_r/kepcointro1.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">한국전력의 미션과 비전, 조직 현황에 대해서 소개합니다.</p>
          <p class="subheader">회사개요, CEO인사말, 핵심가치, 인력·조직현황</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <a href="https://home.kepco.co.kr/kepco/KE/I/htmlView/KEIAHP00101.do?menuCd=FN0102010101">사업분야</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/sub_r/kepcointro2.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">다양한 국내사업 및 해외사업, 스마트그리드를 소개합니다.</p>
          <p class="subheader">국내사업, 해외사업, 에너지신사업, 연구개발</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <a href="https://tech-transfer.kepco.co.kr/main/mainPage.do">특허거래소</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/main_r/story_bg6.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">한전의 지적재산을 필요 산업체에 기술이전</p>
          <p class="subheader">한국전력이 보유하고 있는 지적재산을 필요 산업체에 기술이전하여 국가 경제 발전에 기여함을 목표로 합니다.</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <a href="https://cyber.kepco.co.kr/ckepco/front/jsp/CO/H/htmlView/COHAHP001.jsp">신재생에너지 접속정보</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/sub_r/corporate03.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">손쉽게 신재생에너지 접속 정보를 조회할 수 있습니다.</p>
          <p class="subheader">"신에너지" 란 기존의 화석연료를 변환시켜 이용하거나 수소, 산소 등의 화학 반응을 통하여 전기 또는 열을 이용하는 에너지
          "재생에너지" 란 햇빛, 물, 지열, 강수, 생물유기체 등을 포함하는 재생 가능한 에너지를 변환시켜 이용하는 에너지</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <a href="https://www.kentech.ac.kr/mainIntro/introhtml.do">한국에너지 공과 대학교</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/main_r/story_bg9.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">미래  에너지 산업을 이끌어갈 글로벌 연구 창업 대학교</p>
          
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <a href="https://en-ter.co.kr/main.do">에너지 마켓 플레이스</a>
          <p class="pic"><img src="https://home.kepco.co.kr/kepco/front/img/main_r/story_bg10.jpg" alt="image of a planet called Pegasi B"></p>
          <p class="lead">한전의 새로운 에너지 터전 에너지분야 비즈매칭플랫폼</p>
          
        </div>
      </div>
    
    </div>
    
</article>
<footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="include/ft.jsp"></jsp:include>
</footer>    
</body>
</html>