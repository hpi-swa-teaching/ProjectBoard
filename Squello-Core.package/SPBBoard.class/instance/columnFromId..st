accessing
columnFromId: aNumber
	
	^ self columns 
		detect:	[:column | column id = aNumber].