toolbuilder-colum
buildColumnSpecWith: aBuilder
	
	^ self columns collect: [:column | self buildColumnSpecWith: aBuilder and: column].