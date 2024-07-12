toolbuilder-colum
buildColumnBodySpecWith: aBuilder and: anSPBColumn
	
	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		frame: (0@self beginnColumnBody corner: 1@1);
		name: #columnScrollPane;
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #always;
		layout: #vertical;
		children: {self buildColumnDropAreaWith: aBuilder and: anSPBColumn};
		yourself. 
	
	
