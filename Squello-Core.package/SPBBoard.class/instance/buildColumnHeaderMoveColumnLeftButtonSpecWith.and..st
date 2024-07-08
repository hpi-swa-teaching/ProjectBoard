toolbuilder
buildColumnHeaderMoveColumnLeftButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		frame: (0.55@0.6 corner: 0.7@1);
		model: anSPBColumn;
		action: #swapLeft;
		label: '<-';
		help: 'move the column left';
		yourself.