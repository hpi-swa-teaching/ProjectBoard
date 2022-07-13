cards
moveCardToTop: aSPBCard toColumn: aSPBLane

	| payload |
	payload := Dictionary newFrom: {'position' -> 'top' . 'column_id' -> aSPBLane id}.	
	self api moveCard: aSPBCard id withPostData: payload.