// Pra tratar erro de login não preenchido: 
function validarLogin(){
	if(document.formLogin.txtUsuario.value == ""){
		alert("Usuário não informado");
		return false;
	}
	
	if(document.formLogin.txtSenha.value == ""){
		alert("Senha não informada");
		return false;
	}
	
	/* Que vai acontecer quando for submetido: */
	document.formLogin.submit();
}