Class {
	#name : #BaselineOfGt4Workouts,
	#superclass : #BaselineOf,
	#category : #BaselineOfGt4Workouts
}

{ #category : #baseline }
BaselineOfGt4Workouts >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Gt4Workouts'
		]
]
