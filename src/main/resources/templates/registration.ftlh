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
	<div class="hero-content2">
		<form action="/registration" method="post" class="form1">
			<h1>Регистрация</h1>
			<span>
				<p>
					<input placeholder="Введите свое имя:" type="text" class="input1" id="name"  name="name">
				</p>
				<p>
					<input placeholder="Введите свою почту:" type="email" class="input1" id="email" name="email">
				</p>
				<p>
					<input placeholder="Введите номер телефона:" type="phoneNumber" class="input1" id="phoneNumber" name="phoneNumber">
				</p>
				<p>
					<input placeholder="Введите пароль:" type="password" class="input1" id="password" name="password">
				</p>
				<p>
					<input type="hidden" name="_csrf" value="${_csrf.token}">
					<button class="button2" onclick="location.href='begin'">Отправить</button>
				</p>
			</span>
		</form>
	</div>
</body>

</html>