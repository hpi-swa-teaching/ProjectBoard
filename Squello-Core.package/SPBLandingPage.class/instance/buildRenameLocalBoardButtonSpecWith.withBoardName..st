toolbuilder-manage panel
buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aString

	^ aBuilder pluggableButtonSpec new
		model: [self renameBoardFromButton: aString];
		action: #value;
		horizontalResizing: #shrinkWrap;
		label: 'Rename';
		yourself.