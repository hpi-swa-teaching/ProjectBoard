toolbuilder-colum
buildColumnHeaderMoveColumnRightButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (self endMoveColumnButton@self endColumnHeaderTitle corner: 1@1);
		action: #swapRight;
		label: '->';
		help: 'move the column right';
		yourself.