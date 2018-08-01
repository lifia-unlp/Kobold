code generation
refactoringsScripts
	^ self refactorings inject: '' into: [ :code :refactoring | code , refactoring script ]
	"genera el codigo particular de cada refactorin requerido"