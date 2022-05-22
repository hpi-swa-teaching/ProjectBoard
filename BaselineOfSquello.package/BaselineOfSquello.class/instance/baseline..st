baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Squello-Core';
				package: 'Squello-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('Squello-Core');
				group: 'tests' with: #('Squello-Tests')];
				yourself