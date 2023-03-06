<%@tag pageEncoding="UTF-8"%>
<%@tag body-content="scriptless"%>
<%@tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts"%>
<%@ attribute name="siteTitle" %>
<fmt:setBundle basename="messages.common"/>
<layout:common siteTitle="${siteTitle}">

	<jsp:attribute name="header">
		<section id="site_top">
			<div class="left">
				<a href="<c:url value='/index.jsp'/>">HOME페이지로 이동!  </a>
			</div>
			<div class="right">
			<%-- 로그인 성공했을 시에만! header에 노출 됨   --%>
				<c:if test="${isLogin}">
				<fmt:message key="member.login.status">
					<fmt:param value="${sessionScope.member.userNm }"/>
					<fmt:param value="${sessionScope.member.userId }"/>
				</fmt:message>
					<%--마이페이지로 이동 --%>
					<a href="<c:url value="/member/mypages"/>">
						<fmt:message key="member.mypages"/>
					</a>
				
					<%--로그아웃 --%>
					<a href="<c:url value="/memver/logout"/>">
						<fmt:message key="member.logout"/>
					</a>
				</c:if>
			
			</div>
		</section>
		<h1>헤더</h1>
	</jsp:attribute>
	<jsp:attribute name="footer">
		<h1>푸터</h1>
	</jsp:attribute>
	<jsp:body>
		<jsp:doBody/>
	</jsp:body>
</layout:common>