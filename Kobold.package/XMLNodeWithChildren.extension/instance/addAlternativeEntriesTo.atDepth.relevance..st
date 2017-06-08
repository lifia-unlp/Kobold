*Kobold
addAlternativeEntriesTo: map atDepth: depth relevance: relevance
	"Was previously weighted - classes had .8 relevance and other attributes .2"

	self addClassAlternativeEntriesTo: map atDepth: depth relevance: relevance.
	self addAttributeAlternativeEntriesTo: map atDepth: depth relevance: relevance