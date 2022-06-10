creation
updateOldFrontLaneIdFor: aNumber In: anOrderedCollection

	(aNumber - 1) = 0  
		ifFalse: [(anOrderedCollection at: aNumber - 1) frontLaneId: (anOrderedCollection at: aNumber + 1) id].
	(aNumber + 1) > anOrderedCollection size 
		ifFalse:  [(anOrderedCollection at: aNumber + 1) frontLaneId: self frontLaneId].
	