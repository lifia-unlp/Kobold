*Kobold-RefactoringsServer
suggestedRefactoringsClassesFrom: someParameters
	| expressionName |
	expressionName := someParameters at: '1'.
	^ (self refactoringsClassesByExpression at: expressionName)
		collect: [ :className | Smalltalk at: className ]