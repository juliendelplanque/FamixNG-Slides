Class {
	#name : #FamixNGSlidesSmalltalkGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'selectorReference',
		'famixStMethod',
		'slide'
	],
	#category : #'FamixNG-SlidesSmalltalk-Generator'
}

{ #category : #accessing }
FamixNGSlidesSmalltalkGenerator class >> packageName [

	<ignoreForCoverage>
	^ #'FamixNG-SlidesSmalltalk-Bind'
]

{ #category : #accessing }
FamixNGSlidesSmalltalkGenerator class >> prefix [

	<ignoreForCoverage>
	^ 'FmxSlideSt'
]

{ #category : #accessing }
FamixNGSlidesSmalltalkGenerator class >> submetamodels [ 

	<ignoreForCoverage>
	^ { FmxNGSlidesGenerator. FamixPharoSmalltalkGenerator }
]

{ #category : #definition }
FamixNGSlidesSmalltalkGenerator >> defineClasses [
	super defineClasses.
	slide := self remoteEntity: #Slide withPrefix: #'Fmx'.
	selectorReference := builder newClassNamed: #SelectorReference.
	famixStMethod := self remoteEntity: #Method withPrefix: #'FamixSt'
]

{ #category : #definition }
FamixNGSlidesSmalltalkGenerator >> defineHierarchy [
	super defineHierarchy.
]

{ #category : #definition }
FamixNGSlidesSmalltalkGenerator >> defineRelations [
	super defineRelations.
	((slide property: #outgoingReferences) -* (selectorReference property: #source)) withNavigation.
	((selectorReference property: #candidates) *-* (famixStMethod property: #incomingReferences)) withNavigation.
]
