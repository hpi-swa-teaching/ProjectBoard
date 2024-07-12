toolbuilder-colum
buildColumnHeaderMoveColumnRightButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (0.85@0.6 corner: 1@1);
		action: #swapRight;
		label: '->';
		help: 'move the column right';
		yourself.