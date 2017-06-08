rendering
renderFormOn: html

	html tbsForm beInline with: 
			[html legend: 'Search Events'.
			html tbsFormGroup: 
					[self renderSearchInputOn: html.
					html space.
					self renderSubmitButtonOn: html]]