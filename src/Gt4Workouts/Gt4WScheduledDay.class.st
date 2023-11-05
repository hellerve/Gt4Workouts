Class {
	#name : #Gt4WScheduledDay,
	#superclass : #Object,
	#instVars : [
		'day',
		'rpe',
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WScheduledDay >> children [
	^ day exercises collect: [:anExercise |
		Gt4WScheduledExercise new
			exercise: anExercise;
			rpe: rpe;
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
Gt4WScheduledDay >> rpe [
	^ rpe
]

{ #category : #accessing }
Gt4WScheduledDay >> rpe: anObject [
	rpe := anObject
]
