toolbuilder-colum
buildColumnHeaderMoveColumnLeftButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (0.55@0.6 corner: 0.7@1);
		action: #swapLeft;
		label: '<-';
		help: 'move the column left';
		yourself.