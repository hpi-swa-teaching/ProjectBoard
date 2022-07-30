toolbuilder
buildColumnBodySpecWith: aBuilder and: anSPBColumn
	
	^aBuilder pluggableScrollPaneSpec new
			frame: (0@0.15 corner: 1@1);
			name: #columnScrollPane;
			model: self;
			hScrollBarPolicy: #never;
			vScrollBarPolicy: #always;
			children: {aBuilder pasteUpSpec new
					minimumExtent: 300@290;
					model: anSPBColumn;
					name: anSPBColumn id;
					dropped: #cardDropped:Event:;
					reject: [:morph :event | ((morph class = SPBCard) or: [morph class = SPBGhostColumn]) not];
					yourself};
			layout: #vertical;
			yourself. 
	
	
