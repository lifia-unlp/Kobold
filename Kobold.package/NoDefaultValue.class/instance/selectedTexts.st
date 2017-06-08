private
selectedTexts
	^ self events collect: [ :event | event selectionText ]