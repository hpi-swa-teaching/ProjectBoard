cards
moveCard: aSPBCard toColumn: aSPBColumn 
	
	^ self api moveCard: aSPBCard cardId toColumn: aSPBColumn id fieldId: self columnFieldId inProject: self projectId.