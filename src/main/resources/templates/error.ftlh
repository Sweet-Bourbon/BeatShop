<!DOCTYPE html>
<html lang="ru"
<head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Beat Shop</title>
	<link rel="stylesheet" href="/static/css/main.css">
	<script src="/static/js/app.js"></script>
	<link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon">
</head>
<body>
    <header>
		<div class="top">
			<div class="label">
				<h1>Бит Шоп <span>Музыкальный Маркетплейс</span></h1>
			</div>
			<div class="menu">
				<ul>
					<li><a href="/profile">Профиль</a></li>
					<li><a href="/my/products">Мои биты</a></li>
					<li><a href="/products">Магазин</a></li>
					<li>
						<form action="/logout" method="post">
							<input type="hidden" name="_csrf" value="${_csrf.token}">
							<input type="submit" class="ex" value="Выход"/>
						</form>
					</li>
				</ul>
			</div>
		</div>
	</header>
	<div class="space1">
		<br>
	</div>
	<div class="error">
		<h1>Что-то пошло не так</h1>
        <button class="button2" onclick="location.href='/'">Вернуться на главную страницу</button>
	</div>
	<div class="lastspace">
		<br>
	</div>
</body>
</html>