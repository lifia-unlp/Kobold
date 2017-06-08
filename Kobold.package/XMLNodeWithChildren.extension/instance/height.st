*Kobold
height
	^ self nodes ifEmpty: [ 1 ] ifNotEmpty: [ (self nodes max: [ :node | node height ]) + 1 ]