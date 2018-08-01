class initialization
initialize
	"self initialize"

	| application |
	super initialize.
	application := WAAdmin register: self asApplicationAt: #Home. "Registra la Aplicacion"
	application
		exceptionHandler: WADebugErrorHandler; " habilita la apertura del depurador clasico cuando ocurre una excepcion exceptionHandler: WADebugErrorHandler"
		addLibrary: JQDevelopmentLibrary; "agrega bibliotecas JQuery completo"
		addLibrary: JQUiDevelopmentLibrary; "agrega bibliotecas Jquery Ui completo"
		addLibrary: TBSDeploymentLibrary; "agrega biblioteca de bootstrap"
		addLibrary: SelfRefactoringResources. "agrega la clase de biblioteca del paquete libraries"
	application preferenceAt: #sessionClass put: KoboldSession "Persolaliza el objeto Session"