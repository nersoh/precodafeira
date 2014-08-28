// PAGINATION SALES
$(document).ready( function () {
	$(".pagination").delegate("a", "click", function () {
		// Requisição Ajax para executar o script contido em "index.js.haml"
		$.getScript(this.href);
		return false;
	});
});