rendering
modalLoaderScript: html for: aVersion
	^ html jQuery ajax script: [ :s | s << (s jQuery: #modalInner ) html: [ :r | self modalDialog: r for: aVersion ] ]