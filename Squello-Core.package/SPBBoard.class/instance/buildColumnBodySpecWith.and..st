toolbuilder
buildColumnBodySpecWith: aBuilder and: anSPBColumn
	
	^ aBuilder pluggableScrollPaneSpec new
		frame: (0@0.15 corner: 1@1);
		name: #columnScrollPane;
		model: self;
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #always;
		children: {self buildColumnDropAreaWith: aBuilder and: anSPBColumn};
		layout: #vertical;
		yourself. 
	
	
