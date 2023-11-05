Class {
	#name : #Gt4WDay,
	#superclass : #Object,
	#instVars : [
		'name',
		'exercises'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WDay class >> named: aName [ 
	^ self new name: aName
]

{ #category : #accessing }
Gt4WDay >> add: anAssociation setsOf: aString atRPEs: anRPERange [
	exercises
		add: (Gt4WSingleExercise new
				exercise: aString;
				sets: anAssociation key;
				reps: anAssociation value;
				rpes: anRPERange)
]

{ #category : #accessing }
Gt4WDay >> add: anInteger supersetsOf: aCollection atRPEs: anRPERange [
	exercises
		add: (Gt4WSuperSettedExercise new
				sets: anInteger;
				supersets: aCollection;
				rpes: anRPERange)
]

{ #category : #accessing }
Gt4WDay >> children [
	^ exercises
]

{ #category : #'as yet unclassified' }
Gt4WDay >> exercises [
	^ exercises
]

{ #category : #accessing }
Gt4WDay >> initialize [
	exercises := OrderedCollection new
]

{ #category : #accessing }
Gt4WDay >> name [
	^ name
]

{ #category : #accessing }
Gt4WDay >> name: anObject [
	name := anObject
]

{ #category : #accessing }
Gt4WDay >> printOn: aStream [
	aStream nextPutAll: self name
]
