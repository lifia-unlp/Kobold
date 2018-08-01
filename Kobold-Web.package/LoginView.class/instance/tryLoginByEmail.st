actions
tryLoginByEmail
	(self appManager existUserWithEmail: self logonID andPassword: self password)" appManager (h) retorn un Aplication Mananger (persistencia) busca si existe un email con el logonID y la contraseña Ingresada"
	"getUser busca entre los usuario un con el nombre ingresado"
		ifTrue: [ self accessWithEmail. "si lo encuentra le da acceso con email"
			^ true ].
	^ false