accessing
labelMorphs
	
	labelMorphs ifNil: [self labelMorphs: (OrderedCollection newFrom: {})].
	^ labelMorphs.