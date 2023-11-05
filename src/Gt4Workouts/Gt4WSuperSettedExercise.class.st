Class {
	#name : #Gt4WSuperSettedExercise,
	#superclass : #Gt4WExercise,
	#instVars : [
		'supersets'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WSuperSettedExercise >> printOn: aStream [
	aStream
		nextPutAll: sets asString;
		nextPutAll: ' sets of ';
		nextPutAll: (' + '
				join: (self supersets collect: [ :aPair | aPair value asString , ' ' , aPair key ]))
]

{ #category : #accessing }
Gt4WSuperSettedExercise >> supersets [
	^ supersets
]

{ #category : #accessing }
Gt4WSuperSettedExercise >> supersets: anObject [
	supersets := anObject
]
