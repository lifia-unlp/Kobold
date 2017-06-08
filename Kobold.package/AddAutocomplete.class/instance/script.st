code generation
script
	^ super script
		,
			'
function initAutocompletes(){
var input = $(xpathInstance.getElementByXpath(' , self elementXpath
		,
			'));
if(typeof(input[0]) != "undefined") {
new Awesomplete(input[0], {list: [' , self valuesList
		,
			']});}
};

setTimeout(initAutocompletes, 1000);
'