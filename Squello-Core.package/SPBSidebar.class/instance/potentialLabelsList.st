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
		potentialLabels select: [:each | (labels anySatisfy: [:elem | elem = each]) not].