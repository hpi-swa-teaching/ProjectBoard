toolbuilder-manage panel
buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aString

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Rename';
		yourself.