Class {
	#name : #Gt4WScheduledWeek,
	#superclass : #Object,
	#instVars : [
		'number',
		'rpe',
		'cycle'
	],
	#category : #'Gt4Workouts-Model'
}

{ #category : #accessing }
Gt4WScheduledWeek >> children [
	^ cycle days collect: [:aDay |
		Gt4WScheduledDay new
			day: aDay;
			rpe: rpe;
			cycle: cycle
	]
]

{ #category : #accessing }
Gt4WScheduledWeek >> cycle [
	^ cycle
]

{ #category : #accessing }
Gt4WScheduledWeek >> cycle: anObject [
	cycle := anObject
]

{ #category : #accessing }
Gt4WScheduledWeek >> number [
	^ number
]

{ #category : #accessing }
Gt4WScheduledWeek >> number: anObject [
	number := anObject
]

{ #category : #accessing }
Gt4WScheduledWeek >> printOn: aStream [
	aStream nextPutAll: 'Week '; nextPutAll: number asString
]

{ #category : #accessing }
Gt4WScheduledWeek >> rpe [
	^ rpe
]

{ #category : #accessing }
Gt4WScheduledWeek >> rpe: anObject [
	rpe := anObject
]
