rendering
pieScript: html

	| canvasId |
	canvasId := self identifier.
	html script: ((html jQuery: '#us-detail') on: 'shown.bs.modal'
				do: 'var pie' , canvasId , ' = new Chart(ctx' , canvasId , ').Pie(data'
				, canvasId , ');')