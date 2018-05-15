class initialization
initialize
	"self initialize"

	| application |
	super initialize.
	application := WAAdmin register: self asApplicationAt: #Home.
	application
		exceptionHandler: WADebugErrorHandler;
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary;
		addLibrary: TBSDeploymentLibrary;
		addLibrary: SelfRefactoringResources.
	application preferenceAt: #sessionClass put: KoboldSession