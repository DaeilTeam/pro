<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html> 
<html class="no-js">

<head>
	<link rel="stylesheet" media="all" href="/css/style.css"/>
	<link rel="stylesheet" media="all" href="/css/skin.css"/>
	
	<!-- 버튼 장식용  -->	
	<link rel="stylesheet" href="/css/elements.css"/>
	<!-- 로그인 from 장식용 -->
	<link rel="stylesheet" href="/css/formlogin.css"/>
	
	<style type="text/css">
		.a{
			width: 40px;
		}
		.bigfont{
			font-weight:bold;
			font-size: 20px;
		}
	</style>
	<script>
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);	
			if (response.status === 'connected') {
				testAPI();
			} else if (response.status === 'not_authorized') {
				document.getElementById('status').innerHTML = 'Please log ' +
				'into this app.';
			} else {
				document.getElementById('status').innerHTML = 'Please log ' +
				'into Facebook.';
			}
		}

		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}

		window.fbAsyncInit = function() {
			FB.init({
				appId      : '{your-app-id}',
				cookie     : true,
				xfbml      : true,  
				version    : 'v2.5'
			});

			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});

		};

		//익명 즉시실행 함수, 함수를 정의함과 동시에 실행. 이후 다시 실행되지 않음.
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		function testAPI() {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me', function(response) {
			console.log('Successful login for: ' + response.name);
			document.getElementById('status').innerHTML =
			'Thanks for logging in, ' + response.name + '!';
		});
	}
</script>
</head>
	
	
<body class="page">
	
	<header>
	</header>
		
	<!-- MAIN -->
	<div id="main">
		<div class="wrapper cf">
			
			
			
		<!-- page content-->
       	<div id="page-content" class="cf">        	
	        	
	        	
        	<!-- entry-content -->	
        	<div class="entry-content cf">
	        	
				<form action="single.html" method="post" id="loginform">
				<div class="last">
					<h5>아이디</h5>
					<input type="text" id="mid" name="mid" maxlength="10">
					<p></p>
				</div>
				<div class="last">
					<h5>비밀번호</h5>
					<input type="password" id="mpw" name="mpw" maxlength="20">
					<p></p>
				</div>
				<input type="submit" class="link-button green" value=" 로그인 "/>
				<input type="button" id="censle" class="link-button red" value=" 취소 "/>
				</form>
				
				<div id="fb-root"></div>
				<script>
				(function(d, s, id) {
					var js, fjs = d.getElementsByTagName(s)[0];
					if (d.getElementById(id)) return;
					js = d.createElement(s); js.id = id;
					js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8";
					fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
				</script>
				<div class="fb-login-button" data-max-rows="1" data-size="xlarge" data-show-faces="false" data-auto-logout-link="false"></div>
				
				<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
				</fb:login-button>
					
				<div id="status">
				</div>
			</div>
				
   		</div>
			
			
			
		</div>
	</div>
		
</body>
	
	
	
</html>