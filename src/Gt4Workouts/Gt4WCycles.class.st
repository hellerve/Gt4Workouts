Class {
	#name : #Gt4WCycles,
	#superclass : #Object,
	#classInstVars : [
		'allWorkouts'
	],
	#category : #'Gt4Workouts-Registry'
}

{ #category : #accessing }
Gt4WCycles class >> all [
	^ allWorkouts
]

{ #category : #accessing }
Gt4WCycles class >> current [
	self all last
]

{ #category : #accessing }
Gt4WCycles class >> initialize [
	allWorkouts := OrderedCollection new
]
