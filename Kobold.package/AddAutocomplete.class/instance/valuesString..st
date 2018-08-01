accessing
valuesString: aString
	| withoutLineFeeds |
	withoutLineFeeds := aString copyReplaceAll: String lf with: ''.
	self values: (withoutLineFeeds splitOn: Character cr)