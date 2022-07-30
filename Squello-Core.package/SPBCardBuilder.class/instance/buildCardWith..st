building
buildCardWith: anJsonObject 

	^ self
		card: SPBCard new;
		setCardID: (anJsonObject at: 'id');
		setupMouseEvents;
		buildContent: (anJsonObject at: 'content_url');
		buildUI;
		buildIndicatorDetection.