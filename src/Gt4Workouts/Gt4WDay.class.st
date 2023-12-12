Class {
	#name : #Gt4WDay,
	#superclass : #Object,
	#instVars : [
		'name',
		'exercises',
		'cycle',
		'index'
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
				rpes: anRPERange;
				index: exercises size + 1)
]

{ #category : #accessing }
Gt4WDay >> add: anInteger supersetsOf: aCollection atRPEs: anRPERange [
	exercises
		add: (Gt4WSuperSettedExercise new
				sets: anInteger;
				supersets: aCollection;
				rpes: anRPERange;
				index: exercises size + 1)
]

{ #category : #accessing }
Gt4WDay >> children [
	^ exercises
]

{ #category : #accessing }
Gt4WDay >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4WDay >> cycle: anObject [
	cycle := anObject.
	exercises do: [ :anExercise | anExercise cycle: cycle ]
]

{ #category : #'as yet unclassified' }
Gt4WDay >> exercises [
	^ exercises
]

{ #category : #accessing }
Gt4WDay >> gtViewDayFor: aView [
	<gtView>
	^ aView tree
		title: 'Day';
		priority: 1;
		items: [ { self } ];
		children: #children;
		expandAll
]

{ #category : #accessing }
Gt4WDay >> index [
	^ index
]

{ #category : #accessing }
Gt4WDay >> index: anObject [
	index := anObject
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

{ #category : #accessing }
Gt4WDay >> template [
	^ 'addDay: ''' , self name
		, ''';
	'
		, (';
	' join: (self exercises collect: #template))
]
