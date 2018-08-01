instance creation
new: aString
	"Answer a newly created and initialized instance."

	^(self new)
		data: aString;
		yourself