accessing
valuesString

	^self values fold: [:concatenation :string | concatenation, String cr, string]