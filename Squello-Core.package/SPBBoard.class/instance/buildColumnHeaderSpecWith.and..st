toolbuilder-colum
buildColumnHeaderSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggablePanelSpec new
		frame: (0@0 corner: 1@self beginnColumnBody);
		children: {self buildColumnHeaderTitleSpecWith: aBuilder and: anSPBColumn.
			self buildColumnHeaderAddCardButtonSpecWith: aBuilder and: anSPBColumn.
			self buildColumnHeaderMoveColumnLeftButtonSpecWith: aBuilder and: anSPBColumn.
			self buildColumnHeaderMoveColumnButtonSpecWith: aBuilder and: anSPBColumn.
			self buildColumnHeaderMoveColumnRightButtonSpecWith: aBuilder and: anSPBColumn.};
		yourself.