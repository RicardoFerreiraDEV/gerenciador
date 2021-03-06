<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.util.List,br.com.alura.gerenciador.servlet.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Empresas</title>

</head>
<body>
<body>

	<a href="/gerenciador">Principal</a>
	<p />
	<c:if test="${not empty empresa}">
	Empresa ${ empresa } Cadastrada com Sucesso!
	</c:if>
	<p />

	Lista de Empresas :

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome }-<fmt:formatDate
					value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" /> <a
				href="/gerenciador/entrada?acao=MostraEmpresa?id=${empresa.id }">Editar / </a><a
				href="/gerenciador/entrada?acao=RemoveEmpresa?id=${empresa.id }">Remover</a>
			</li>
		</c:forEach>
	</ul>

</body>
</html>