actions
encript: aPassword salt: salt
"Encripta la contraseña"
	| key |
	key := (salt , aPassword) asByteArray.
	^(SHA256 new hashMessage: key) asString