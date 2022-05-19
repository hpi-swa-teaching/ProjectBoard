as yet unclassified
newWith: aNumber
	|a|
	a := self new.
	a lanes: (a getLanes: aNumber).
	a 
		buildArea;
		buildLanes;
		yourself.
	^a.
	