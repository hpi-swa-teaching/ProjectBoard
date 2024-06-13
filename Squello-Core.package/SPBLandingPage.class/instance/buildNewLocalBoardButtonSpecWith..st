toolbuilder-manage panel
buildNewLocalBoardButtonSpecWith: aBuilder

	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: self;
		verticalResizing: #shrinkWrap;
		action: #openNewLocalBoard;
		label: 'New Local';
		yourself).
		
