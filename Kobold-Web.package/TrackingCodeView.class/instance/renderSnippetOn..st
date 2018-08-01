rendering
renderSnippetOn: html 
	^ html 
"Genera el codigo para embeber la aplicacion y adjunta el toquen de la aplicacioin self client token en content"	
		preformatted: [ html       
				paragraph: [ html
						code: '<meta name="SelfRefactoringToken" content="' , self client token , '"/>';
						break;
						code:
							'<script type=text/javascript type="text/javascript" src="https://selfrefactoring.s3.amazonaws.com/resources/jquery.htmlClean.min.js"></script>';
						break;
						code: '<script type=text/javascript type="text/javascript" src="https://selfrefactoring.s3.amazonaws.com/resources/logger.js"></script>';
						break;
						code:
							'<script type="text/javascript" charset="utf-8">
	$(function() {
		xpathInstance = new XpathProcessor();
		logger = new Logger("http://autorefactoring.lifia.info.unlp.edu.ar", true);
		logger.loadUsabilityEventsLoggers();
		logger.loadRefactorings();
	});
</script>' ] ]