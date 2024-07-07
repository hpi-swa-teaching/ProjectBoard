toolbuilder-manage panel
buildLocalBoardNameSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'name of the board: ',(aString copyFrom: SPBBoard localPrefix size + 1 to: aString size);
		horizontalResizing: #shrinkWrap;
		yourself.