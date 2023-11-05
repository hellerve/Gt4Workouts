Class {
	#name : #Gt4WScheduledExercise,
	#superclass : #Object,
	#instVars : [
		'exercise',
		'day',
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
Gt4WScheduledExercise >> day [
	^ day
]

{ #category : #accessing }
Gt4WScheduledExercise >> day: anObject [
	day := anObject
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
		nextPutAll: self rpe asString;
		nextPut: $)
]

{ #category : #accessing }
Gt4WScheduledExercise >> rpe [
	| rpes weekNumber weekNumbers |
	rpes := self exercise rpes.
	weekNumber := self day week number.
	weekNumbers := self cycle weeks.
	^ rpes at: (rpes size * (weekNumber / weekNumbers)) rounded
]
