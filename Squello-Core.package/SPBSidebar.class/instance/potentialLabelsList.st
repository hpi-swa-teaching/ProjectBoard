lists
potentialLabelsList
	
	| potentialLabels labels |
	potentialLabels := self potentialLabels deepCopy.
	labels := self activeCard labels.
	(self activeCard isRealCard not or: [potentialLabels isNil])
		ifTrue: [^ self potentialLabelsListHeader].
	^ self potentialLabelsListHeader, 
		potentialLabels select: [:potentialLabel | (labels includes: potentialLabel) not].