toolbuilder
buildLaneBodySpecWith: aBuilder And: aSPBLane

	^ aBuilder pluggablePasteUpSpec new
		model: aSPBLane;
		name: aSPBLane id;
		frame: (0@0.05 corner: 1@1);
		dropped: #cardDropped:Event:;
		reject: [:morph :event | (morph class = SPBCard) not];
		yourself.