endpoint-get
smellDetailsWithId: aNumber
	| smellClass smell |
	smellClass := self smellWithId: aNumber.
	smell := smellClass new.
	^ {('id' -> smellClass smellId).
	('name' -> smell name).
	('description' -> smell info).
	('attributes' -> smellClass recommendationHelperAttributes)} asOrderedDictionary