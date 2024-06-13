toolbuilder-manage panel
buildRenameLocalBoardButtonSpecWith: aBuilder withBoardName: aString

	^ "aBuilder build:" (aBuilder pluggableButtonSpec new
		model: self;
		label: 'Rename';
		yourself).
		