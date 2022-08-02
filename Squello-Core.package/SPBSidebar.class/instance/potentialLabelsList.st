lists
potentialLabelsList
	
	| potentialLabels labels |
	potentialLabels := self potentialLabels deepCopy.
	labels := self activeCard labels.
	self activeCard isRealCard 
		ifFalse: [^ self potentialLabelsListHeader].
	potentialLabels
		ifNil: [^ self potentialLabelsListHeader].
	^ self potentialLabelsListHeader, 
		potentialLabels select: [:potentialLabel | (labels anySatisfy: [:label | label = potentialLabel]) not].