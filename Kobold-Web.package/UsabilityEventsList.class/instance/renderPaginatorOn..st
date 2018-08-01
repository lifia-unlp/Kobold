rendering - pagination
renderPaginatorOn: html
	html
		tbsPagination: [ 
			html tbsPaginationItem with: [ html anchor with: [ html tbsDoubleLeftAngleQuote ] ].
			1 to: self lastPage do: [ :pageNumber | 
				html
					tbsPaginationItem: [ 
						html anchor
							callback: [ self page: pageNumber ];
							with: pageNumber greaseString ] ].
			html tbsPaginationItem with: [ html anchor with: [ html tbsDoubleRightAngleQuote ] ] ]