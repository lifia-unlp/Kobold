accessing
elementBox
	| box origin corner |
	box := self element boundingBox.
	origin := box origin - self elementBoxPadding.
	corner := box corner + self elementBoxPadding.
	^ origin corner: corner