accessing
anyGroupAdmits: string

	^self groups anySatisfy: [:group | group admits: string]