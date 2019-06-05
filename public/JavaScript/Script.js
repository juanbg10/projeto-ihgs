// JavaScript Document

$(document).ready(function(){

	setInterval(function(){
		$(".home-seta").animate({"margin-top":"110px"});
		$(".home-seta").animate({"margin-top":"90px"});
	},500);

/* ---------- Patronos - JSON ---------- */
	
	var url = window.location.href;
	var params = url.split("?=")[1];
	
	$.getJSON('/api/patrons', function(data) {
	  
	  var nameJson = '';
	  var name = '';
	  var bio = '';
	  var img = '';
	  var dateBorn = '';
	  var dateDeath = '';
	  
	  for (i = 0; i < data.length; i++) {
		nameJson += "<h3><a href=\"patronos-select.html?="+data[i].id+"\">"+data[i].name+"</a></h3>";
	  }
	  $(".patronos-json").html(nameJson);
	  
	  params = parseInt(params) - 1;
	  name += data[params].name;
	  bio += data[params].bio;
	  img += data[params].id;
	  dateBorn += data[params].date_of_born;
	  dateDeath += data[params].date_of_death;
	  
	  $(".name-patrono-select").html(name);
	  $(".bio-patrono-select").html(bio);
	  $(".img-patrono").css({"background-image":"url(\"/Imagens/Patronos/"+img+".jpg\")"});
	  $(".date-born").html(dateBorn);
	  $(".date-death").html(dateDeath);
	  
	});
	
	/* ---------- Blog - JSON ---------- */
	
	$.getJSON('/api/posts', function(data) {
	  
	  var postBlog = '';
	  var imgBlog = '';
	  var titleBlog = '';
	  var subtitleBlog = '';
	  
	  for (i = 0; i < data.length; i++) {
	  	//$(".imgBlog").css({"background-image": "url:(\""+data[i].image.url+"\")"});
	  	postBlog += "<img src="+data[i].image.url+" class=\"imgBlog\"/>";
		postBlog += "<div class=\"titleBlog\">"+data[i].title+"</div>";
		postBlog += "<div class=\"subtitleBlog\">"+data[i].subtitle+"</div>";
	
	  }
	  $(".blog-json").html(postBlog);
	  
	});

/* ---------- Window Scroll ---------- */	
	
	var home = $(window).innerHeight() - 100;
	
	$(window).scroll(function(){
		
		if($(this).scrollTop() > home)
		{
			$("header").addClass('header-active');
			$(".header-line").fadeOut(300);
		}
		
		else{
			$("header").removeClass('header-active');
			$(".header-line").fadeIn(300);
		}

	});
	
/* ---------- Menu and Footer ---------- */	

	$("header img").click(function(){
		window.location.href = "index.html";
	});

	$(".btn-sm").click(function(){
		window.location.href = "sobre.html";
	});

	$(".header-active2 a").click(function(e){					
		event.preventDefault();		
		if($(this).attr('href') == "#redir-principal"){
			window.location.href = "index.html";
		}
		else if($(this).attr('href') == "#redir-sobre"){
			window.location.href = "sobre.html";
		}
		else if($(this).attr('href') == "#redir-diretoria"){
			window.location.href = "index.html#redir-diretoria";
		}
		else if($(this).attr('href') == "#redir-transparencia"){
			window.location.href = "transparencia.html";
		}
		else if($(this).attr('href') == "#redir-contato"){
			window.location.href = "contato.html";
		}
	});

	$("header nav a").click(function(e){		
		$("nav a").removeClass("active");		
		$(this).addClass("active");			
		event.preventDefault();	
		if($(this).attr('href') == "#redir-sobre"){
			window.location.href = "sobre.html";
		}
		else if($(this).attr('href') == "#redir-transparencia"){
			window.location.href = "transparencia.html";
		}
		else if($(this).attr('href') == "#redir-contato"){
			window.location.href = "contato.html";
		}
		else{
			$("html, body").animate({scrollTop: $($(this).attr('href')).offset().top - 75}, 800);		
		}
	});

	$("footer a").click(function(){
		event.preventDefault();		
		if($(this).attr('href') == "#redir-principal"){
			window.location.href = "index.html";
		}
		else if($(this).attr('href') == "#redir-sobre"){
			window.location.href = "sobre.html";
		}
		else if($(this).attr('href') == "#redir-diretoria"){
			window.location.href = "index.html#redir-diretoria";
		}
		else if($(this).attr('href') == "#redir-transparencia"){
			window.location.href = "transparencia.html";
		}
		else if($(this).attr('href') == "#redir-contato"){
			window.location.href = "contato.html";
		}
		else{
			$("html, body").animate({scrollTop: $($(this).attr('href')).offset().top - 50}, 800);
		}
	});
	
/* ---------- Sobre - Home ---------- */

$(".sobre .sobre-content0").click(function(e){					
	event.preventDefault();		
	if($(this).attr('href') == "#redir-membros"){
		window.location.href = "membros.html";
	}
	else if($(this).attr('href') == "#redir-patronos"){
		window.location.href = "patronos.html";
	}
	else if($(this).attr('href') == "#redir-projetos"){
		window.location.href = "projetos.html";
	}
	else if($(this).attr('href') == "#redir-sobre"){
		window.location.href = "sobre.html";
	}
});

/* ---------- Serviços ---------- */	

$(".servicos a").click(function(e){					
	event.preventDefault();		
	if($(this).attr('href') == "#redir-membros"){
		window.location.href = "membros.html";
	}
	else if($(this).attr('href') == "#redir-patronos"){
		window.location.href = "patronos.html";
	}
	else if($(this).attr('href') == "#redir-projetos"){
		window.location.href = "projetos.html";
	}
});

/* ---------- Blog - Home ---------- */	
	
	$(".btn-blog-redir").click(function(){
		window.location.href = "blog.html";	
	});

/* ---------- Newsletter ---------- */	
	
	$("#btn-news").click(function(e){

		if($("#email").val() == "")
		{
			$("#erro-email").delay(300).fadeIn(300);
			$("#erro-email").delay(2000).fadeOut(1000);
		}

		else
		{
			$("#erro-email").fadeOut(300);

			var email = $("#email").val();
			var pattern = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			
			if ($.trim(email).match(pattern)){
				$("#erro2-email").delay(2000).fadeOut(1000);
				$("#success").delay(300).fadeIn(300);
				$("#success").delay(3000).fadeOut(1000);

				$.ajax({
					type: "POST", 
					url: "JavaScript/Form.php", 
					dataType:"html", 
					data:dados, 
					success:function(e){                             
						$("#email").val("");
					}
				});
			}
			
			else{
				$("#erro2-email").delay(300).fadeIn(300);
				$("#erro2-email").delay(2000).fadeOut(1000);
			}
		}
		
	});		

	/* ---------- Contato ---------- */	

	$("#btn-enviar").click(function(e){

        var dados = $("#form").serialize();
        
		if($("#nome").val() == "")
		{
			$("#erro-nome").fadeIn(300);
			$("#erro-nome").delay(2000).fadeOut(1000);
		}
		
		else
		{
			$("#erro-nome").fadeOut(300);
			
			if($("#email").val() == "")
			{
				$("#erro-email").delay(300).fadeIn(300);
				$("#erro-email").delay(2000).fadeOut(1000);
				
			}
			
			else
			{
				$("#erro-email").fadeOut(300);
					
				if($("#tel").val() == "")
				{
					$("#erro-telefone").delay(300).fadeIn(300);
					$("#erro-telefone").delay(2000).fadeOut(1000);
				}	
				
				else
				{
					$("#erro-telefone").fadeOut(300);
					
					if($("#mensagem").val() == "")
					{
						$("#erro-mensagem").delay(300).fadeIn(300);
						$("#erro-mensagem").delay(2000).fadeOut(1000);
					}

					else
					{
						$("#erro-mensagem").fadeOut(300)
						$("#success").delay(300).fadeIn(300);
						$("#success").delay(3000).fadeOut(1000);
						
						$.ajax({
							type: "POST", 
							url: "JavaScript/Form.php", 
							dataType:"html", 
							data:dados, 
							success:function(e){                             
								$("#nome").val("");
								$("#email").val("");
								$("#tel").val("");
								$("#mensagem").val("");
							}
						});

					}
					
				}
				
			}
			
		}
		
	});	
	
/* ------------------------------------------------------------ Responsive --------------------------------------------------------- */
	
/* -------------------- Menu - Icon-------------------- */
		
	$(".icon-menu").click(function(e) {
		$(".menu-animate").animate({"margin-left" : "-70%"}, 300);
	});
	
	$(".seta").click(function(e) {
		$(".menu-animate").animate({"margin-left" : "0px"}, 300);
  });
	
/*  ------------------------------ Menu  ------------------------------ */	

	$(".nav a").click(function(e) { 
		event.preventDefault();		
		if($(this).attr('href') == "#redir-principal"){
			window.location.href = "index.html";
		}
		else if($(this).attr('href') == "#redir-sobre"){
			window.location.href = "sobre.html";
		}
		else if($(this).attr('href') == "#redir-diretoria"){
			window.location.href = "index.html#redir-diretoria";
		}
		else if($(this).attr('href') == "#redir-transparencia"){
			window.location.href = "transparencia.html";
		}
		else if($(this).attr('href') == "#redir-contato"){
			window.location.href = "contato.html";
		}
  });
	
});



