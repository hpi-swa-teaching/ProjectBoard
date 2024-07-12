toolbuilder-manage panel
buildOpenLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: [self openBoardFromButton: aString];
		action: #value;
		label: 'Open';
		horizontalResizing: #shrinkWrap;
		yourself.