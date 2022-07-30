update sidebar
potentialLabelsList
	
	| potentialLabels labels |
	potentialLabels := self potentialLabels deepCopy.
	self activeCard
		ifNil: [^ {}].
	labels := self activeCard labels.
	potentialLabels
		ifNil: [^ {#('---not used labels---')}].
	^ #('---not used labels---'), 
		potentialLabels select: [:each | (labels anySatisfy: [:elem | elem = each]) not].