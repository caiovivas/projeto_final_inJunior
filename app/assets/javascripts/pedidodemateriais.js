$('#adc').submit('click', mais_item);
var material = $( ".relacaomat" ).clone();
console.log(material[0]);
function mais_item (evento){
	evento.preventDefault();
	$('#pedidoDeMat').html( $('#pedidoDeMat').html()+ '<div class="relacaomat">'+
	'<li><SELECT NAME = "menu[]" SIZE=1><OPTION>Selecione o material</OPTION>'+
	'<OPTION>outra opção...</OPTION><OPTION>terceira opção</OPTION></SELECT>'+
	'<input class="remover" type="submit" value="x"></input></li></div>' );
}

$('li').delegate('.remover','click',function(){

	var pai = $(this).closest('div');
	pai.remove();

});