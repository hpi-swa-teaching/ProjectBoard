converting
asForm

	| array |
	array := (1 to: self extent x * self extent y) 
		collect: [:i | self color pixelValueForDepth: self formDepth].
	
	^ Form
			extent: self extent
			depth: self formDepth
			fromArray: array
			offset: 0@0.