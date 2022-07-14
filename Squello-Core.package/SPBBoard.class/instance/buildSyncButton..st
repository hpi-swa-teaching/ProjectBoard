toolbuilder
buildSyncButton: aBuilder

	^ aBuilder pluggableActionButtonSpec new
			frame: (0@0.95 corner: 1@1);
			model: self;
			action: #synchronizeBoard;
			label: 'Synchronize Board';
			help: 'Synchronizes with a remote Project from Github';
			yourself.