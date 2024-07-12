toolbuilder
contentSpecDict

	^ (self contentPanels 
		collect: [:each| each first -> (each second 
			collect: [:eachSymbol| self perform: eachSymbol with: self usedBuilder])]) 
	asDictionary.