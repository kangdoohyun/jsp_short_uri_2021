<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="메인 페이지" />

<%@ include file="../part/head.jspf"%>
<section class='min-h-screen mt-20'>
	<div class="container mx-auto px-4">
		<div class="mx-auto text-center py-8">
			<span class="mx-auto text-xl font-bold">단축 URL 생성 프로그램</span>
		</div>
		
		<form action="./main" class="w-full flex">
			<div class="flex-grow">
				<div class="form-control">
				  <input type="text" placeholder="URL을 복사해서 붙혀 넣어주세요" class="input input-lg input-bordered">
				</div> 
			</div>
			<div class="ml-2">
				<button class="btn btn-ghost btn-lg">ghost</button>
			</div>
		</form>
		
		
	</div>
	
</section>
<section class='min-h-screen'>
	
</section>
<%@ include file="../part/foot.jspf"%>