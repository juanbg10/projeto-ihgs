<?php 

// Dados do Formulário

$nome = $_POST["nome"];
$email = $_POST["email"];
$email = $_POST["tel"];
$mensagem = $_POST["mensagem"];
    
// Configurações de email

$email_destinatario = "contato@amplacompany.com";
$email_reply = "$email"; 
$email_assunto = "Ampla Company - Contato";
	
// Estrutura de mensagem
	
$email_conteudo = "Ampla Company - Contato: \n \n"; 
$email_conteudo .= "Nome: $nome \n"; 
$email_conteudo .= "Email: $email \n";
$email_conteudo .= "Telefone: $telefone \n";
$email_conteudo .= "Mensagem: $mensagem \n"; 

// Seta os Headers

$headers = "MIME-Version: 1.1\r\n";
$headers .= "Content-type: text/plain; charset=UTF-8\r\n";
$headers .= "From: contato@amplacompany.com\r\n"; // remetente
$headers .= "Return-Path: contato@amplacompany.com\r\n"; // return-path

mail($email_destinatario, $email_assunto, $email_conteudo, $headers, "-r".$email_destinatario);

?>
	