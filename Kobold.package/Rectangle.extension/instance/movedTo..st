*Kobold
movedTo: aPoint
	"Returns a copy of the receiver where its top left position is aPoint."

	^ self copy
		moveTo: aPoint;
		yourself