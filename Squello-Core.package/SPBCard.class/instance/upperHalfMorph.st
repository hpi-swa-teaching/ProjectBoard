accessing
upperHalfMorph
	
	upperHalfMorph ifNil: [self upperHalfMorph: SPBIndicatorDetection new].
	^ upperHalfMorph.