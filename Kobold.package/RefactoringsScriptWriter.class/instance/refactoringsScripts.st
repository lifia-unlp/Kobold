code generation
refactoringsScripts
	^ self refactorings inject: '' into: [ :code :refactoring | code , refactoring script ]