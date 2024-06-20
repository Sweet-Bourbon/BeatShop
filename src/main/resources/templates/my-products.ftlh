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
					<li><a href="/products">Продукты</a></li>
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
	<div class="mybeats">
		<h1>
			Мои биты
		</h1>
		<#list products as product>
			<div class="namebeat">
				<a href="/product/${product.id}" class="x"> ${product.title} </a>
			</div>
			<form action="/product/delete/${product.id}" class="onebeat" method="post">
			<input type="hidden" name="_csrf" value="${_csrf.token}"/>
			<button type="submit" class="delete">
				Удалить
			</button>
			</form>
		</a>
		<#else>
    	<p class="where">Не найдено</p>
		</#list>
		<div class="space2">
			<br>
		</div>
		<button class="button2" onclick="location.href='/my/products/create'">Добавить бит</button>
	</div>
	<div class="lastspace">
		<br>
	</div>
</body>
</html>
