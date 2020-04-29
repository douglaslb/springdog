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
				<h1>Atualize ${dogModel.nome}</h1>
				<p>Atualize os dados ou a história de ${dogModel.nome}.</p>
				<a href="${contextPath}"> <i class="fas fa-arrow-left"
					style="margin-right: 10px;"></i> Voltar para home
				</a>
			</section>
			<form:form modelAttribute="dogModel" action="${contextPath}/${dogModel.id}" method="put">

				<label for="nomeDone">Nome do dono</label>
				<form:input path="nomeDono" placeholder="Nome do dono" id="nomeDono" />
				<font color="red"><form:errors path="nomeDono" /></font>
				<br />

				<label for="cpf">CPF</label>
				<form:input path="cpf" placeholder="CPF do dono" id="cpf" />
				<font color="red"><form:errors path="cpf" /></font>
				<br />

				<label for="nomeDog">Nome do dog</label>
				<form:input path="nome" placeholder="Nome do dog" id="nomeDog" />
				<font color="red"><form:errors path="nome" /></font>
				<br />

				<label for="raca">Raça</label>
				<form:input path="raca" placeholder="Raça" id="raca" />
				<font color="red"><form:errors path="raca" /></font>
				<br />

				<label for="idade">Idade</label>
				<form:input path="idade" placeholder="Idade" type="number"
					id="idade" />
				<font color="red"><form:errors path="idade" /></font>
				<br />

				<label for="historia">História</label>
				<form:textarea path="historia" placeholder="Conte uma história" id="historia"></form:textarea>
				<font color="red"><form:errors path="historia" /></font>
				<br />
				<button type="submit" class="btn-cadastrar">Atualizar</button>
			</form:form>
		</div>
	</div>
	</div>
</body>

</html>