code generation
script

	| script |
	script := ''.
	requiredInputs do: 
			[:requiredInputXpath |
			script := script , '
				requiredInput = $(xpathInstance.getElementByXpath(''', requiredInputXpath ,'''));
				requiredInput.addClass('' requiredInput '');
				requiredInput.before(''(*)'');
				requiredInput.blur(function(){ 
					if ( !$(this).val() ) {
						$(this).css("background-color","rgb(255, 176, 173)");
					} else {
						$(this).css("background-color","");
					}
				} );
			'].
	
	script := script , '
			  $("document").ready(function(){
				var form = $(xpathInstance.getElementByXpath(''',self domElement xpath,'''));
				form.submit(function(e){
					var requiredInputs = $(".requiredInput");
					for (var i = 0; i < requiredInputs.length; i++) {
						if ( !requiredInputs.get(i) || !$(requiredInputs.get(i)).val() ) {
							requiredInputs.css("background-color","rgb(255, 176, 173)")
							e.preventDefault();
							return false;
						}
					}
				});
			 });
			'. 
	^script