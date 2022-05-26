card movement
alignCards

	self cards withIndexDo: 
		[:each :index |	each position: ((self pasteup position x + 10) @ (self pasteup position y + 10 + ((index-1) * 120)))].