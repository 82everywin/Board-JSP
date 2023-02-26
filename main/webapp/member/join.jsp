<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="html" tagdir="/WEB-INF/tags/html"  %>

<fmt:setBundle basename="messages.common"/>

<fmt:message var="title" key="member.jointitle"/>
<c:url var="action" value="/member/join"/>

<%-- 회원가입하기 창 --%>
<layout:main siteTitle="${title} ">
	<h1>${title} 창 입니다/</h1>
	<form name="registFrm" method="post" action="${action }"
	autocomplete="off" target="ifrmProcess">
	<%-- 아이디 --%>
	<dl>
		<dt>
			<fmt:message key="userId"/></dt>
		<dd>
			<input type="text" name="userId">
		</dd>
	</dl>
	<%-- 비밀번호 --%>
	<dl>
		<dt>
			<fmt:message key="userPw"/></dt>
		<dd>
			<input type="password" name="userPw">
		</dd>
	</dl>
	<%-- 비밀번호 재확인 --%>
		<dl>
		<dt>
			<fmt:message key="userPwRe"/></dt>
		<dd>
			<input type="password" name="userPwRe">
		</dd>
	</dl>
	<%-- 이름(회원명) --%>
	<dl>
		<dt>
			<fmt:message key="userNm"/></dt>
		<dd>
			<input type="text" name="userNm">
		</dd>
	</dl>
	<%-- 생년월일 --%>
	<dl>
		<dt>
			<fmt:message key="birth"/></dt>
		<dd>
			<input type="text" name="birthYY">
			<html:selectNum start="1" end="12"  name="birthMM" label="월" />
			<input type="text" name="birthDD">
		</dd>
	</dl>
	<%-- 성별 --%>
		 <dl>
      <dt>
         <fmt:message key="gender"/></dt>
      <dd>
         <select name="gender">
            <option value="MAN"><fmt:message key="man"/></option>
            <option value="WOMAN"><fmt:message key="woman"/></option>
            <option value="N_GENDER"><fmt:message key="not.gender"/></option>
         </select>
      </dd>
   </dl>
   <%-- 전화번호 --%>
    	<dl>
    		<dt>
    			<fmt:message key="mobile"/></dt>
   			<dd>
   				<input type="text" name="mobile"/>
   			</dd>
    	</dl>

	<%--회원 약관 동의 --%>
	<div>
			<input type="checkbox" name="agree" value="1" id="agree">
			<label for="agree">
				<fmt:message key="member.agree.terms"/>
			</label>
	</div>
	
	
	<%-- 입력 란, 제출 란 만들기  --%>
	<div class="btn">
		<button type="submit">
			<fmt:message key="member.join"/>
		</button>
	</div>
	</form>
</layout:main>