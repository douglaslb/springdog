<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<c:url value="/resources/css" var="css" />

<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<script src="https://kit.fontawesome.com/3fcc4a01ef.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${css}/styles.css" />
</head>
<body>

	<div class="container">
		<header>
			<img src="<c:url value="/resources/assets/logo.png"/>"
				alt="Spring Dogs" /> <span>Bem vindo(a)</span> <a
				href="${contextPath}/form?page=cadastrar-dog">
				<button class="btn">Cadastar novo dog</button>
			</a>
		</header>

		<h1>Dogs Cadastrados</h1>
		<c:if test="${not empty messages}">
			<h3 class="notify-message">${messages}</h3>
		</c:if>
		<ul class="dogs-list">

			<c:forEach items="${dogs}" var="dogs">
				<li>
					<div class="dog-name">
						<strong>NOME DO DOG:</strong>
						<p>${dogs.nome}</p>
					</div>

					<div class="dog-breed">
						<strong>RAÇA:</strong>
						<p>${dogs.raca}</p>
					</div>

					<div class="dog-age">
						<strong>IDADE:</strong>
						<p>${dogs.idade}</p>
					</div> <form:form action="${contextPath}/${dogs.id}"
						style="display:flex; justify-content: flex-end; " method="delete">
						<a href="${contextPath}/${dogs.id}"> <i class="fas fa-eye"
							style="font-size: 18px; color: #a8a8b3;"></i>
						</a>
						<a href="${contextPath}/form?page=atualizar-dog&id=${dogs.id}">
							<i class="fas fa-pen" style="font-size: 18px; color: #a8a8b3;"></i>
						</a>
						<button type="submit">
							<i class="fas fa-trash" style="font-size: 18px; color: #a8a8b3;"></i>
						</button>

					</form:form>
				</li>


			</c:forEach>



		</ul>

	</div>
</body>
</html>