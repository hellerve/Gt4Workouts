Class {
	#name : #Gt4WScheduledDay,
	#superclass : #Object,
	#instVars : [
		'day',
		'week',
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WScheduledDay >> children [
	^ day exercises collect: [:anExercise |
		Gt4WScheduledExercise new
			exercise: anExercise;
			day: self;
			cycle: cycle
	]
]

{ #category : #accessing }
Gt4WScheduledDay >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4WScheduledDay >> cycle: anObject [
	cycle := anObject
]

{ #category : #accessing }
Gt4WScheduledDay >> day [
	^ day
]

{ #category : #accessing }
Gt4WScheduledDay >> day: anObject [
	day := anObject
]

{ #category : #accessing }
Gt4WScheduledDay >> printOn: aStream [
	aStream nextPutAll: day name
]

{ #category : #accessing }
Gt4WScheduledDay >> week [
	^ week
]

{ #category : #accessing }
Gt4WScheduledDay >> week: anObject [
	week := anObject
]
