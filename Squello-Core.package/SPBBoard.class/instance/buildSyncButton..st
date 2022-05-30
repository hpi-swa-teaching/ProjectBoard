toolbuilder
buildSyncButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		frame: (0.75@0.9 corner: 1@1);
		model: self;
		action: #synchronizeBoard;
		label: 'Synchronize Board';
		help: 'synchronizes with remote Project Github';
		yourself.