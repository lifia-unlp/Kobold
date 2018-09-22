rendering
modalHeader: html
		super modalHeader: html.
		html paragraph:[
		html text: 'Number of navigation use between lists '.
		html strong: self badSmell eventsCount printString, '.'.
		"(self substring: (self badSmell domElements)) do:[:element | html code: element printString]."
		"html code: self badSmell domElement printString ]"
		"html text: self badSmell domElements."
		"html code:'/html/body/div[2]/ul' printString."
	].