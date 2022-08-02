toolbuilder
buildInputPanel: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: (self buildInputFields: aBuilder);
		frame: (0@0 corner: 1@1);
		yourself.