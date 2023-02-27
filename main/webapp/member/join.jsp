<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setBundle basename="messages.common" />

<fmt:message var="title" key="member.jointitle" />
<c:url var="action" value="/member/join" />

<%-- 회원가입하기 창 --%>
<layout:main siteTitle="${title}">
	<div id="joinbox" class="joinbox">
		<form action="${action}" method="post" name="registFrm"
			autocomplete="off" target="ifrmProcess" class="join-content">
			<!-- 회원가입 타이틀 -->
			<h2>${title}</h2>

			<!-- 이름(회원명)-->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="userNm" />
				</div>
				<div>
					<input type="text" id="joinNm" placeholder="이름을 입력해 주세요"
						maxlength="20" name="userNm">
				</div>
			</div>
			<!-- 아이디 -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="userId" />
				</div>
				<div>
					<input type="text" id="joinId" placeholder="아이디를 입력해 주세요"
						maxlength="20" name="userId">
				</div>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="userPw" />
				</div>
				<div>
					<input type="password" id="joinPw" placeholder="비밀번호를 입력해 주세요"
						maxlength="20" name="userPw">
				</div>
			</div>
			<!-- 비밀번호 재확인  -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="userPwRe" />
				</div>
				<div>
					<input type="password" id="joinPwRe" placeholder="비밀번호를 다시 입력해 주세요"
						maxlength="20" name="userPwRe">
				</div>
			</div>
			<!-- 전화번호 -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="mobile" />
				</div>
				<div>
					<input type="text" id="mobile" placeholder="전화번호를 입력해 주세요"
						maxlength="20" name="mobile">
				</div>
			</div>
			<!-- 생년월일 -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="birth" />
				</div>
				<div>
					<input type="password" id="joinPwRe" placeholder="비밀번호를 다시 입력해 주세요"
						maxlength="20" name="userPwRe">
				</div>
			</div>
			<!-- 성별 -->
			<div class="form-group">
				<div class="font-size-15 margin-bottom-3">
					<fmt:message key="gender" />
				</div>
				<div>
					<select name="<fmt:message key="gender"/>">
						<option value="<fmt:message key="man"/>">
							<fmt:message key="man" />
						</option>
						<option value="<fmt:message key="woman"/>">
							<fmt:message key="woman" />
						</option>
						<option value="<fmt:message key="not.gender"/>">
							<fmt:message key="not.gender" />
						</option>
					</select>
				</div>
			</div>

			<!-- 약관 동의 -->
			<div class="form-group">
				<input type="checkbox" name="agree" value="1" id="agree"> <label
					for="agree"> <fmt:message key="member.agree.terms" />
				</label>
			</div>
			
			<!-- 회원가입 버튼 -->
			<div class="form-group btn-group">
				<button style="background-color : #d3d3d3;">취소</button>
				<button type="submit" style="background-color : #fff5ee;">
					<fmt:message key="member.join"/>				
				</button>
			</div>
		</form>
	</div>
</layout:main>



