toolbuilder-colum
buildColumnBodySpecWith: aBuilder and: anSPBColumn
	
	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		frame: (0@0.15 corner: 1@1);
		name: #columnScrollPane;
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #always;
		children: {self buildColumnDropAreaWith: aBuilder and: anSPBColumn};
		layout: #vertical;
		yourself. 
	
	
