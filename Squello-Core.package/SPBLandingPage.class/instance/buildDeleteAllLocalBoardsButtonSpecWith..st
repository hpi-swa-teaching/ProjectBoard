toolbuilder-manage panel
buildDeleteAllLocalBoardsButtonSpecWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #deleteAllLocal;
		label: 'Delete All';
		verticalResizing: #rigid;
		yourself.