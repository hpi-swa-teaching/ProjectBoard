accessing
indicator
	
	indicator 
		ifNil: [self indicator: 
			(LineMorph
				from: 0 @ 0
				to: 0 @ 0
				color: Color orange
				width: 5).
			self pasteup addMorph: self indicator.
			self indicator hide].
	^ indicator.