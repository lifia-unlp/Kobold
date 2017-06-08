initialize-release
initialize

	| email date number |
	super initialize.

	email := Expression new: '[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}' name: 'Email input'.
	date := Expression new: '[0-3]?[0-9][/-][0-3]?[0-9]([/-](19|20)\d\d)?' name: 'Date input'.
	number := Expression new: '\d+' name: 'Number input'.
	expressions := OrderedCollection with: email with:date with:number.