toolbuilder
buildLanesSpecWith: aBuilder
	
	^ self lanes collect: [:each | self buildLaneSpecWith: aBuilder and: each].