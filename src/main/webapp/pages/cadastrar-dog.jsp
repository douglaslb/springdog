<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<c:url value="/resources/css" var="css" />
<link rel="stylesheet" href="${css}/styles.css" />
<c:set value="${pageContext.request.contextPath}" var="contextPath" />
<script src="https://kit.fontawesome.com/3fcc4a01ef.js"
	crossorigin="anonymous"></script>

<title>Cadastrar Dog</title>
</head>

<body>
	<div class="container-dog">
		<div class="content">
			<section>
				<img src="<c:url value="/resources/assets/logo.png"/>"
					alt="Spring Dog" width="250px" style="margin-bottom: 30px">
				<h1>Cadastrar novo dog</h1>
				<p>Descreva a hist�ria do seu dog para que ele possa conhecer
					outros dogs.</p>
				<a href="${pageContext.request.contextPath}"> <i
					class="fas fa-arrow-left" style="margin-right: 10px;"></i> Voltar
					para home
				</a>
			</section>
			<form:form modelAttribute="dogModel" action="${contextPath}/"
				method="post">
				<div class="form-group">
					<label for="nomeDone">Nome do dono</label>
					<form:input path="nomeDono" placeholder="Nome do dono"
						id="nomeDono" />
					<font color="red"><form:errors path="nomeDono" /></font> <br />
				</div>

				<div class="form-group">
					<label for="cpf">CPF</label>
					<form:input path="cpf" placeholder="CPF do dono" id="cpf" />
					<font color="red"><form:errors path="cpf" /></font> <br />
				</div>

				<div class="form-group">
					<label for="nomeDog">Nome do dog</label>
					<form:input path="nome" placeholder="Nome do dog" id="nomeDog" />
					<font color="red"><form:errors path="nome" /></font> <br />
				</div>

				<div class="form-group">
					<label for="raca">Ra�a</label>
					<form:input path="raca" placeholder="Ra�a" id="raca" />
					<font color="red"><form:errors path="raca" /></font> <br />
				</div>

				<div class="form-group">
					<label for="idade">Idade</label>
					<form:input path="idade" placeholder="Idade" type="number"
						id="idade" />
					<font color="red"><form:errors path="idade" /></font> <br />
				</div>


				<div class="form-group">
					<label for="historia">Hist�ria</label>
					<form:textarea path="historia" placeholder="Conte uma hist�ria"
						id="historia"></form:textarea>
					<font color="red"><form:errors path="historia" /></font> <br />
				</div>
				<button type="submit" class="btn-cadastrar">Cadastrar</button>

			</form:form>
		</div>
	</div>
	</div>
</body>

</html>