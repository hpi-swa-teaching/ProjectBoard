columns
moveCardToTop: anSPBCard toColumn: anSPBColumn

	| payload |
	payload := Dictionary newFrom: {'position' -> 'top' . 'column_id' -> anSPBColumn id}.	
	self api moveCard: anSPBCard id withPostData: payload.