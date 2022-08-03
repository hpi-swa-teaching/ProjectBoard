columns
moveColumnToFront: anSPBColumn

	| payload |
	payload := Dictionary newFrom: {'position' -> 'first'}.	
	self api moveColum: anSPBColumn id withPostData: payload.