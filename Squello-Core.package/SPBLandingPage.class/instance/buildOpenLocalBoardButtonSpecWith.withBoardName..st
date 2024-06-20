toolbuilder-manage panel
buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: [self openBoardFromButton: aString];
		action: #value;
		horizontalResizing: #shrinkWrap;
		label: 'Open';
		yourself.