toolbuilder
buildInputPanel: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		frame: (0@0 corner: 1@1);
		layout: #vertical;
		children: (self buildInputFields: aBuilder);
		yourself.