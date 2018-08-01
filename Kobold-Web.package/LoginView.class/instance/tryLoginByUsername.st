actions
tryLoginByUsername

	(self appManager existUser: self logonID withPassword: self password)" appManager (h) retorn un Aplication Mananger (persistencia) busca si existe un usuario con el logonID y la contraseña Ingresada"
	"getUser busca entre los usuario un con el nombre ingresado"
		ifTrue: 
			[self accessWithUsername. "en caso positivo le da acceso con el nombre de usuario"
			^true].
	^false