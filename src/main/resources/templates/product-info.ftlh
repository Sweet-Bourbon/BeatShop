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
        <h1>Информация о бите</h1>
        <span>
            <form class="text">
                Название товара: ${product.title}
            </form>
            <form class="text">
                Описание товара: ${product.description}
            </form>
            <form class="text">
                Цена: ${product.price}
            </form>
            <div class="space2">
                <br>
            </div>
            <div class="space2">
                <br>
            </div>
            <audio  controls>
                <source src="/sound/${product.id}" type="audio/mpeg">
                Тег audio не поддерживается вашим браузером.
            </audio>
            <form class="text">
                Автор: <a class="x" href="/user/${product.user.id}">${product.user.name}</a>
            </form>
            <form class="text">
                Телефон: ${product.user.phoneNumber}
            </form>
        </span>
    </div>
    <div class="lastspace">
		<br>
	</div>
</body>
</html>
