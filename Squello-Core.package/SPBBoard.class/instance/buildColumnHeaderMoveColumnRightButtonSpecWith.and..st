toolbuilder
buildColumnHeaderMoveColumnRightButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		frame: (0.85@0.6 corner: 1@1);
		model: anSPBColumn;
		action: #swapRight;
		label: '->';
		help: 'move the column right';
		yourself.