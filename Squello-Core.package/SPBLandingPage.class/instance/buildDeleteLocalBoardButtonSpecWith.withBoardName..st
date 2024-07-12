toolbuilder-manage panel
buildDeleteLocalBoardButtonSpecWith: aBuilder withBoardName: aString
	
	^ aBuilder pluggableButtonSpec new
		model: [self deleteBoardFromButton: aString];
		action: #value;
		label: 'Delete';
		horizontalResizing: #shrinkWrap;
		yourself.