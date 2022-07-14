accessing
labelMorphs
	
	^ labelMorphs ifNil: [labelMorphs := (OrderedCollection newFrom: {})].