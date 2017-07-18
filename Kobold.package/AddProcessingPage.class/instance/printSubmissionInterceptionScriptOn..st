code generation
printSubmissionInterceptionScriptOn: aStream
	aStream
		<<
			'
	var interceptedForm = $(xpathInstance.getElementByXpath({formXpath}));
	submit = $(interceptedForm.find(":submit"));
	submitCSS = submit.getStyleObject();
	button = submit.clone().attr("type","button");
	button.css(submitCSS);
	button.click(function()\{
		$("#overlay").show();
		setTimeout(function()\{interceptedForm.submit()},1);
	});
	submit.hide().after(button);
	'