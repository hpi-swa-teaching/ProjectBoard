toolbuilder
buildColumnSpecWith: aBuilder
	
	^ self columns collect: [:each | self buildColumnSpecWith: aBuilder and: each].