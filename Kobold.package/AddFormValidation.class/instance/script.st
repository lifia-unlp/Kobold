code generation
script

	| script |
	script := ''.
	requiredInputs do: 
			[:requiredInputXpath |
			script := script , '
				requiredInput = $(xpathInstance.getElementByXpath(''', requiredInputXpath ,'''));
				requiredInput.addClass('' requiredInput '');
				requiredInput.after(''(*)'');
				requiredInput.css("width","90%");
				requiredInput.attr("originalBorderColor", requiredInput.css("border-color"));
				requiredInput.blur(function(){ 
					if ( !$(this).val() ) {
						$(this).css("border-color","rgb(255, 0, 0)");
					} else {
						$(this).css("border-color",$(this).attr("originalBorderColor"));
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
							requiredInputs.css("border-color","rgb(255, 0, 0)");
							e.preventDefault();
							return false;
						}
					}
				});
			 });
			'. 
	^script