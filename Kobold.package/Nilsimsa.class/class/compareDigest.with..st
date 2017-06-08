tools
compareDigest: anHexDigest with: otherHexDigest
	| bits popc |
	popc := self new popc.
	bits := 0.
	1 to: 64 by: 2 do: [ :index | 
		| intValue otherIntValue |
		intValue := (ByteArray readHexFrom: (anHexDigest copyFrom: index to: index + 1)) first.
		otherIntValue := (ByteArray readHexFrom: (otherHexDigest copyFrom: index to: index + 1)) first.
		bits := bits + (popc at: 1 + (255 bitAnd: (intValue bitXor: otherIntValue))) ].
	^ 128 - bits