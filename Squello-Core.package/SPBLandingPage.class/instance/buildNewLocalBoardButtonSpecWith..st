toolbuilder-manage panel
buildNewLocalBoardButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		verticalResizing: #rigid;
		action: #openNewLocalBoard;
		label: 'New Local';
		yourself.