toolbuilder
buildSyncButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
		frame: (0@0.95 corner: 1@1);
		model: self;
		action: #synchronizeBoard;
		label: 'Synchronize Board';
		help: 'synchronizes with remote Project Github';
		yourself.