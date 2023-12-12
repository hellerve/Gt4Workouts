Class {
	#name : #Gt4WResults,
	#superclass : #Object,
	#instVars : [
		'results'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WResults >> gtViewResults: aView [
	<gtView>
	^ aView columnedList
		title: 'Results';
		items: [ results associations
				sorted: [ :a :b | 
					a key first < b key first
						ifTrue: [ true ]
						ifFalse: [ a key first = b key first
								ifTrue: [ a key second < b key second
										ifTrue: [ true ]
										ifFalse: [ a key second = b key second
												ifTrue: [ a key third < b key third ]
												ifFalse: [ false ] ] ]
								ifFalse: [ false ] ] ] ];
		priority: 1;
		column: 'Week' text: [ :anAssociation | anAssociation key first ];
		column: 'Day' text: [ :anAssociation | anAssociation key second ];
		column: 'Exercise' text: [ :anAssociation | anAssociation key third ];
		column: 'Result'
			text: [ :anAssociation | anAssociation value ]
			weight: 2
]

{ #category : #'as yet unclassified' }
Gt4WResults >> inWeek: aWeekNumber onDay: aDayNumber onExercise: anExerciseNumber add: aValue [
	results at: {aWeekNumber. aDayNumber. anExerciseNumber} put: aValue
]

{ #category : #accessing }
Gt4WResults >> initialize [
	super initialize.
	
	results := Dictionary new
]
