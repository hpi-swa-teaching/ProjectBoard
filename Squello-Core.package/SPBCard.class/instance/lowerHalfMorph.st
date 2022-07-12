accessing
lowerHalfMorph

	upperHalfMorph ifNil: [self upperHalfMorph: SPBIndicatorDetection new].
	^ upperHalfMorph.