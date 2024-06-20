<!DOCTYPE html>
<html lang="ru">
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

    <div class="prof">
        <h1>Страница ${user.name}</h1>
        <span>
            <form class="text">
                Электоронная почта: <b>${user.email}</b>
            </form>
            <form class="text">
                Номер телефона: <b>${user.phoneNumber}</b>
            </form>
            <p>
				<div class="space2">
					<br>
				</div>
            </p>
        </span>
    </div>
    <div class="mybeats">
		<h1>
			Биты пользователя ${user.name}
		</h1>
		<#list products as product>
		<a class="product-link">
			<div class="namebeat">
				<a href="/product/${product.id}" class="x"> ${product.title} </a>
			</div>
			<button type="submit" class="button2">
				${product.price} руб.
			</button>
		</a>
		<#else>
    	<p class="where">Товаров нет</p>
		</#list>
	</div>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
    <div class="lastspace">
        <br>
    </div>
</body>
</html>