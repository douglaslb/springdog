<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt_br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <c:url value="/resources/css" var="css"/>
 	<link rel="stylesheet" href="${css}/styles.css" />
  <script src="https://kit.fontawesome.com/3fcc4a01ef.js" crossorigin="anonymous"></script>
 <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
  <title>Spring Dogs</title>
</head>

<body>
  <div class="container">
    <header>
      <img src="<c:url value="/resources/assets/logo.png"/>" alt="Spring Dogs" />
      <span>Bem vindo(a)</span>

      <a href="${contextPath}">
        <button class="btn">Voltar para home</button>
      </a>
    </header>

    <h1>Detalhes do ${dog.nome}</h1>

    <ul class="dogs-list">
      <li>
      	<div class="dog-name">
          <strong>NOME DO DONO:</strong>
          <p>${dog.nomeDono}</p>
        </div>
        
        <div class="dog-name">
          <strong>CPF DO DONO:</strong>
          <p>${dog.cpf}</p>
        </div>
      
      	
        <div class="dog-name">
          <strong>NOME DO DOG:</strong>
          <p>${dog.nome}</p>
        </div>

        <div class="dog-breed">
          <strong>RAÇA:</strong>
          <p>${dog.raca}</p>
        </div>

        <div class="dog-age" style="margin-bottom: 20px;">
          <strong>IDADE:</strong>
          <p>
            ${dog.idade}
          </p>
        </div>

        <div class="dog-historia" style="margin-bottom: 0px; display: block;">
          <strong>HISTÓRIA:</strong>
          <p style="margin-left: 0; margin-top:20px">
            ${dog.historia}
          </p>
        </div>

      </li>
    </ul>

  </div>
</body>

</html>