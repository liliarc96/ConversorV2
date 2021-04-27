<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
	
	/*
	Em: 27 de abr. 22:03 UTC
	1 Euro igual a 131,46 Iene japonês
	1 Iene japonês igual a 0,0076 Euro
	*/
	
	function converterIE(){
		var valor = document.getElementById("valor");
		alert("A conversão deu: € " + valor.value * 0.0076);
	}
	function converterEI(){
		var valor = document.getElementById("valor");
		alert("A conversão deu: ¥ " + valor.value * 131.46);
	}
	
	</script>
	<meta charset="UTF-8">
	<title>Conversor Monetário</title>
</head>
<body>

	<form:form name = "formMoeda" method="post" modelAttribute="moeda" action = "cadastro">
	<h2>1. Qual é o valor?</h2>	
		<p>Valor: <form:input path="valor" id = "valor"/></p>
		<p><form:button onClick = "converterIE()">Iene (¥) -> Euros (€)</form:button>
		<form:button onClick = "converterEI()">Euros (€) -> Iene (¥)</form:button></p>
		${mensagem}
	</form:form>
</body>
</html>