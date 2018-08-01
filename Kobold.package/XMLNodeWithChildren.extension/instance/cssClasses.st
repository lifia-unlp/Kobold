*Kobold
cssClasses
	^ (self attributes at: 'class' ifAbsent: [ ^ OrderedCollection new ]) substrings: {(Character space)}