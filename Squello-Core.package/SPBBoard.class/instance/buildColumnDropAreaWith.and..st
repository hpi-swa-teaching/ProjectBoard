toolbuilder
buildColumnDropAreaWith: aBuilder and: anSPBColumn
	
	^ aBuilder pasteUpSpec new
		minimumExtent: self class columnMinimumExtent;
		model: anSPBColumn;
		name: anSPBColumn id;
		dropped: [:card :event | anSPBColumn cardDropped: card Event: event];
		reject: [:morph :event | morph isCard not];
		yourself.