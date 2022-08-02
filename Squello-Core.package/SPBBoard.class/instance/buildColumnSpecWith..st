toolbuilder
buildColumnSpecWith: aBuilder
	
	^ self columns collect: [:column | self buildColumnSpecWith: aBuilder and: column].