toolbuilder-manage panel
buildNewLocalBoardButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openNewLocalBoard;
		label: 'New Local';
		verticalResizing: #rigid;
		yourself.