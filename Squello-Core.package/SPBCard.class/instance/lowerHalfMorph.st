accessing
lowerHalfMorph

	lowerHalfMorph ifNil: [self lowerHalfMorph: SPBIndicatorDetection new].
	^ lowerHalfMorph.