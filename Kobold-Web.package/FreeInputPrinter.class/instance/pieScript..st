rendering
pieScript: html
	"Unused right now. Leaving it here for a few commits just in case..."

	html
		script:
			((html jQuery: '#us-detail')
				on: 'show.bs.modal'
				do: ('var pie<1s> = new Chart(ctx<1s>).Pie(data<1s>)' expandMacrosWith: self identifier))