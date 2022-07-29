cards
moveCardToTop: anSPBCard toColumn: anSPBLane

	| payload |
	payload := Dictionary newFrom: {'position' -> 'top' . 'column_id' -> anSPBLane id}.	
	self api moveCard: anSPBCard id withPostData: payload.