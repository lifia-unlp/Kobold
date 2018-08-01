accessing
renderOn: html
	html canvas
		id: 'pie' , self identifier;
		width: 150;
		height: 150.
	html
		script:
			(' var ctx<1s> = $("#pie<1s>").get(0).getContext("2d");
		var data<1s> = [ <2s> ];
		var pie<1s> = new Chart(ctx<1s>).Doughnut(data<1s>);'
				expandMacrosWith: self identifier
				with: self dataObjects)