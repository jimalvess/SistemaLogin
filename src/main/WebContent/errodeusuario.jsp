<%@ page isErrorPage="true" %>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Erro de Login</title>

<style type="text/css">
	body{background-color: #fff;}
	#cabecalho{
		background-color: #808080;
		width: 100%;
		height: 60px;
	}
	#corpo{
		background-color: #fff;
		width: 800px;
		height: 550px;
	}
	#rodape{
		background-color: #808080;
		width: 100%;
		height: 60px;
	}
</style>
</head>
<body>
	<div align="center">
		<div id="cabecalho">
			<!-- se precisar de um conteúdo de cabeçalho... -->
		</div>
		<div id="corpo">
			<img src="images/error1.jpg" />
			<hr/>
			Error: <%=exception.getMessage() %> <br/>
			Exceção ocorrida: <%=exception.getClass() %> <br/>
			<hr/>
			<a href="login.jsp">Tentar novamente</a>
		</div>
	</div>
	<div id="rodape">
		<!-- se precisar de um conteúdo de rodapé -->
	</div>
</body>
</html>