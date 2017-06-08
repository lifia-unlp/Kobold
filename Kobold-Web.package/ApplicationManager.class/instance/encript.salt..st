actions
encript: aPassword salt: salt

	| key |
	key := (salt , aPassword) asByteArray.
	^(SHA256 new hashMessage: key) asString