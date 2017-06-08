accessing
tree
	| tree |
	tree := XMLHTMLParser parse: self html.
	^ tree nodes first nodes first nodes first	"TODO: find a better way of removing <html><body>"