Class {
	#name : #Gt4WScheduledExercise,
	#superclass : #Object,
	#instVars : [
		'exercise',
		'rpe',
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WScheduledExercise >> children [
	^ {}
]

{ #category : #accessing }
Gt4WScheduledExercise >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4WScheduledExercise >> cycle: anObject [
	cycle := anObject
]

{ #category : #accessing }
Gt4WScheduledExercise >> exercise [
	^ exercise
]

{ #category : #accessing }
Gt4WScheduledExercise >> exercise: anObject [
	exercise := anObject
]

{ #category : #accessing }
Gt4WScheduledExercise >> printOn: aStream [
	aStream
		nextPutAll: exercise asString;
		nextPutAll: ' (RPE ';
		nextPutAll: rpe asString;
		nextPut: $)
]

{ #category : #accessing }
Gt4WScheduledExercise >> rpe [
	^ rpe
]

{ #category : #accessing }
Gt4WScheduledExercise >> rpe: anObject [
	rpe := anObject
]
