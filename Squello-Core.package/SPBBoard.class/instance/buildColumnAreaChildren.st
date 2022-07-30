toolbuilder
buildColumnAreaChildren 
	
	| children |

    children := ((self buildColumnsSpecWith: self usedBuilder)
		collect: [:spec | self usedBuilder build: spec]) asOrderedCollection.
    children
		add: ((self usedBuilder build: (self buildAddColumnButtonPanelSpecWith: self usedBuilder)) color: Color lightGray).

    ^ children.