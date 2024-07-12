toolbuilder-colum
buildColumnAreaChildren 
	
	| children |
	children := ((self buildColumnSpecWith: self usedBuilder)
		collect: [:spec | self usedBuilder build: spec]) asOrderedCollection.
	addColumnColumn := self usedBuilder build: (self buildAddColumnButtonPanelSpecWith: self usedBuilder).
	children add: addColumnColumn.
	self applyUserInterfaceTheme.
		
	^ children.