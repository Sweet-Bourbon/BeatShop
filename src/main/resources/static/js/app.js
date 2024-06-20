document.addEventListener('mousemove', e => {
	Object.assign(document.documentElement, {
		style: `
		--move-x: ${(e.clientX - window.innerWidth / 2) * -.005}deg;
		--move-y: ${(e.clientY - window.innerHeight / 2) * .01}deg;
		`
	})
})

document.querySelector('input[type="file"]').addEventListener('change', function() {
    console.log("Выбранный файл:", this.files[0].name);
  });
