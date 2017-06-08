updating
updateRootDev: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: self title.
	anHtmlRoot stylesheet url: 'http://srsite.localhost/bootstrap/css/bootstrap.min.css'.
	anHtmlRoot javascript url: 'http://srsite.localhost/bootstrap/js/bootstrap.min.js'.
	anHtmlRoot javascript url: 'http://srsite.localhost/js/jquery-1.11.1.min.js'.
	anHtmlRoot stylesheet url: 'http://srsite.localhost/css/superhero.min.css'.
	anHtmlRoot stylesheet url: 'http://srsite.localhost/css/style.css'.