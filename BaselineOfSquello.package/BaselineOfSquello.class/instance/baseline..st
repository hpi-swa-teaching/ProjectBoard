baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON' ];
				package: 'Animations' with: [spec repository: 'github://hpi-swa/animations/repository'];
				package: 'Squello-Core' with: [spec requires: #('JSON' 'Animations')];
				package: 'Squello-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Squello-Core');
				group: 'tests' with: #('Squello-Tests')];
				yourself
