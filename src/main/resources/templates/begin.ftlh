<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Beat Shop</title>
	<link rel="stylesheet" href="/static/css/main.css">
	<script src="/static/js/app.js" defer></script>
	<link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon">
</head>
<body>

	<section class="layers">
		<div class="layers__container">
			<div class="layers__item layer-1" style="background-image: url(/static/img/layer-1.jpg);"></div>
			<div class="layers__item layer-2">
				<div class="hero-content">
					<h1>Бит Шоп <span>Музыкальный Маркетплейс</span></h1>
					<div class="hero-content__p">Создавай музыку с нами</div>
					<#if user.email??>
					    <button class="button" onclick="location.href='/products'">Начать</button>
					<#else>
					    <button class="button" onclick="location.href='/login'">Начать</button>
					</#if>
				</div>
			</div>
		</div>
	</section>

</body>
</html>