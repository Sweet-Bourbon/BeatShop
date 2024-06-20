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
	<div class="add">
		<h1>Добавить бит</h1>
		<form class="form2" action="/product/create" method="post" enctype="multipart/form-data">
			<p>
				<input type="text" placeholder="Название товара" class="input1" name="title"/>
			</p>
			<p>
				<input type="text" placeholder="Описание товара" class="input1" name="description"/>
			</p>
			<p>
				<input type="number" placeholder="Цена" class="input1" name="price"/>
			</p>
			<p>
				<div class="space2">
					<br>
				</div>
				<input type="file" id="file" name="file"  accept="audio/mpeg"/>
				<label for="file">
					Загрузить файл
				</label>
			</p>
			<p>
				<input type="hidden" name="_csrf" value="${_csrf.token}">
			</p>
			<p>
				<input type="submit" class="button2" value="Добавить"/>
			</p>
		</form>
	</div>
	<div class="lastspace">
		<br>
	</div>
</body>
</html>