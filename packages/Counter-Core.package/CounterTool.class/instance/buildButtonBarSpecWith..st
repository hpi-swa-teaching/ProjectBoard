toolbuilder
buildButtonBarSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			layout: #horizontal;
			frame: (0@0.5 corner: 1@1);
			children: {
				aBuilder pluggableActionButtonSpec new
					model: self;
					label: 'Increment';
					action: #actionIncrement;
					yourself.
				aBuilder pluggableActionButtonSpec new
					model: self;
					label: 'Reset';
					action: #actionReset;
					yourself.
			}