private
parseContent: aContent

	content := ''.
	aContent isNil ifFalse: [content := self parseHtml: aContent]