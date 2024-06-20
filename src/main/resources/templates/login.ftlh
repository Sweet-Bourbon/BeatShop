<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Beat Shop</title>
	<link rel="stylesheet" href="/static/css/main.css">
	<link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon">
</head>

<body>
	<header>
		<div class="top2">
			<div class="label">
				<h1>Бит Шоп <span>Музыкальный Маркетплейс</span></h1>
			</div>
		</div>
	</header>
	<div class="space2">
		<br>
	</div>
	<div class="space2">
		<br>
	</div>
		<div class="hero-content2">
		<form action="/login" method="post" class="form1">
			<h1>Авторизация</h1>
			<span>
				<p>
					<input placeholder="Введите свою почту:" type="email" id="email" class="input1" name="username">
				</p>
				<p>
					<input placeholder="Введите пароль:" type="password" id="password" class="input1" name="password">
				</p>
				<p>
				    <input type="hidden" name="_csrf" value="${_csrf.token}">
					<button class="button2" onclick="location.href='/products'">Войти</button>
				</p>
			</span>
		</form>
		<button class="button" onclick="location.href='/registration'">Нет аккаунта?</button>
		</div>
</body>
</html>