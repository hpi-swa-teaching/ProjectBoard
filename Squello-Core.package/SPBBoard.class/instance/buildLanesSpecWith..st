toolbuilder
buildLanesSpecWith: aBuilder

	^ self lanes collectWithIndex: [:each :i | self buildLaneSpecWith: aBuilder And: each At: i ].