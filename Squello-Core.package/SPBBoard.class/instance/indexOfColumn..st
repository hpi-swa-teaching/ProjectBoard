accessing
indexOfColumn: aNumber

	^ self columns indexOf: 
		(self columnFromId: aNumber).