api
compareHexDigestWith: otherHexDigest

	| hexDigest bits |
	hexDigest := self hexDigest.
	bits := 0.
	1 to: 64 by: 2
		do: 
			[:index |
			| intValue otherIntValue |
			intValue := (ByteArray fromHexString: (hexDigest copyFrom: index to: index + 1)) first.
			otherIntValue := (ByteArray fromHexString: (otherHexDigest copyFrom: index to: index + 1)) first.
			bits := bits + (popc at: 1 + (255 bitAnd: (intValue bitXor: otherIntValue)))
			].
	^128 - bits