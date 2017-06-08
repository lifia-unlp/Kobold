converting
toTbsAlert: html
	^ html tbsAlert
		beDanger;
		with: self message