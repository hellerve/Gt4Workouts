Class {
	#name : #Gt4WSchedule,
	#superclass : #Object,
	#instVars : [
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WSchedule >> children [
	^ (1 to: cycle weeks) collect: [:aNumber |
		Gt4WScheduledWeek new
			number: aNumber;
			cycle: cycle
	]
]

{ #category : #accessing }
Gt4WSchedule >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4WSchedule >> cycle: anObject [
	cycle := anObject
]

{ #category : #'as yet unclassified' }
Gt4WSchedule >> days [
	self shouldBeImplemented.
]

{ #category : #accessing }
Gt4WSchedule >> printOn: aStream [
	aStream nextPutAll: cycle name
]
