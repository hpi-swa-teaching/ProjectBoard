accessing
labelMorphs
	
	labelMorphs ifNil: [self labelMorphs: (Set newFrom: {})].
	^ labelMorphs.