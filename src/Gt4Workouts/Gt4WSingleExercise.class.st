Class {
	#name : #Gt4WSingleExercise,
	#superclass : #Gt4WExercise,
	#instVars : [
		'exercise',
		'reps'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WSingleExercise >> exercise [
	^ exercise
]

{ #category : #accessing }
Gt4WSingleExercise >> exercise: anObject [
	exercise := anObject
]

{ #category : #accessing }
Gt4WSingleExercise >> printOn: aStream [
	aStream
		nextPutAll: sets asString;
		nextPutAll: ' sets of ';
		nextPutAll: reps asString;
		nextPut: Character space;
		nextPutAll: exercise asString
]

{ #category : #accessing }
Gt4WSingleExercise >> reps [
	^ reps
]

{ #category : #accessing }
Gt4WSingleExercise >> reps: anObject [
	reps := anObject
]

{ #category : #accessing }
Gt4WSingleExercise >> template [
	^ 'add: ' , self sets asString , ' -> ' , self reps asString
		, '
	setsOf: ''' , self exercise
		, '''
	atRPEs: ' , self rpes asString
]
