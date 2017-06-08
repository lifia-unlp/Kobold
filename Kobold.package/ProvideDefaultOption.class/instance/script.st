accessing
script
	^ super script , '
	select = $(xpathInstance.getElementByXpath("' , self domElement xpath
		,
			'"));
	if(typeof(select[0]) != "undefined") {select.prop(''selectedIndex'', '
		, self defaultOptionIndex printString
		,
			');}
'