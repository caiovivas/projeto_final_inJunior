$('#adc').submit('click', mais_item);
var material = $( ".relacaomat" ).clone();
console.log(material[0]);
function mais_item (evento){
	
	evento.preventDefault();


	$('#pedidoDeMat').append('<div class="relacaomat">'+
	'<li><SELECT NAME = "menu[]" SIZE=1><OPTION>Selecione o material</OPTION>'+
	'<OPTION>outra opção...</OPTION><OPTION>terceira opção</OPTION>'+
	'</SELECT> <input class="remover" type="button" value="x"></input></li></div>' );
}

$('div').delegate('.remover','click',function(evento){

	evento.preventDefault();
	var pai = $(this).closest('.relacaomat');
	pai.remove();

});