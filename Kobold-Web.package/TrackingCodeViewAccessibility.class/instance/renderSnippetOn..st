rendering
renderSnippetOn: html 
	^ html 
"Genera el codigo para embeber la aplicacion y adjunta el toquen de la aplicacioin self client token en content"	
		preformatted: [ html       
				paragraph: [ html
						code: '<meta name="SelfRefactoringToken" content="' , self client token , '"/>';
						break;
						code:
							'<script type=text/javascript src="jquery.js"></script>';
						break;
						code: '<script type=text/javascript type="text/javascript" src="https://selfrefactoring.s3.amazonaws.com/resources/jquery.htmlClean.min.js"></script>';
						break;
						
						code: '<script type=text/javascript src="logger.js"></script>';
						break;
						code: '<script type="text/javascript" src="http://www.oran.unsa.edu.ar:8084/nvda/loggerAccessibility.js"></script>';
						break;
						
						code:
							'<script type="text/javascript" charset="utf-8">
	$(function() {
xpathInstance = new XpathProcessor();          
logger=new LoggerAccesibility("http://localhost:8080",true);
logger.loadAccesibilityEventsLoggers();
logger.loadAccesibilityRefactorings();
	});
</script>' ] ]