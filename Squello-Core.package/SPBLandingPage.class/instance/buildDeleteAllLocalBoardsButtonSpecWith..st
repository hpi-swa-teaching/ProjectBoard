toolbuilder-manage panel
buildDeleteAllLocalBoardsButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		verticalResizing: #rigid;
		action: #deleteAllLocal;
		label: 'Delete All';
		yourself.