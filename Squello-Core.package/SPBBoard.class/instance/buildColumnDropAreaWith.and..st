toolbuilder-colum
buildColumnDropAreaWith: aBuilder and: anSPBColumn
	
	^ aBuilder pasteUpSpec new
		model: anSPBColumn;
		name: anSPBColumn id;
		minimumExtent: self class columnMinimumExtent;
		dropped: [:card :event | anSPBColumn cardDropped: card Event: event];
		reject: [:morph :event | morph isCard not];
		yourself.