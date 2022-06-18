card movement
alignCards

	self cards withIndexDo: 
		[:each :index |	each walkToPosition: ((self pasteup position x + 4) @ (self pasteup position y + 10 + ((index-1) * 120))). ].