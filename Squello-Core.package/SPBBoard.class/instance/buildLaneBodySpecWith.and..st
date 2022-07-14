toolbuilder
buildLaneBodySpecWith: aBuilder and: aSPBLane
	
	^aBuilder pluggableScrollPaneSpec new
			frame: (0@0.15 corner: 1@1);
			name: #laneScrollPane;
			model: self;
			hScrollBarPolicy: #never;
			vScrollBarPolicy: #always;
			children: 
				{aBuilder pasteUpSpec new
					minimumExtent: 300@290;
					model: aSPBLane;
					name: aSPBLane id;
					dropped: #cardDropped:Event:;
					reject: [:morph :event | ((morph class = SPBCard) or: [morph class = SPBGhostLane]) not];
					yourself};
			layout: #vertical;
			yourself. 
	
	
