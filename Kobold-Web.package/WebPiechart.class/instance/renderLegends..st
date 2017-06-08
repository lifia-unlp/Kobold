accessing
renderLegends: t1 
	"	***This is decompiled code.*** 
	No source was available"

	(t1 div) class: 'panel panel-default';
		with: 
			[t1 tbsPanelHeading: 'Recurrent values'.
			(t1 table) class: 'table table-striped table-condensed';
				with: 
					[t1
						tableRow: 
							[t1 tableHeading: 'Value'.
							t1 tableHeading: 'Times entered'].
					self valuesRows: t1.
					(t1 tableRow) class: 'danger';
						with: 
							[t1 tableData: [t1 strong: 'Total'].
							t1 tableData: [t1 strong: self totalValuesCount printString]]]].
	^self