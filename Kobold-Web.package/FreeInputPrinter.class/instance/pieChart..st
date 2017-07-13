printing
pieChart: html
	(WebPiechart for: self badSmell valuesWithOccurrences id: self identifier)
		renderOn: html