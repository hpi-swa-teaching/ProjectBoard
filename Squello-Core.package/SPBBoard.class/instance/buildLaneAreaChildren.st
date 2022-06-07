toolbuilder
buildLaneAreaChildren 
	
	| children |
	children := ((self buildLanesSpecWith: self usedBuilder) collect: 
		[:spec | self usedBuilder build: spec]) asOrderedCollection.
	children add: ((self usedBuilder build: (self buildAddLaneButtonPanelSpecWith: self usedBuilder)) color: (Color lightGray)).

    ^ children.