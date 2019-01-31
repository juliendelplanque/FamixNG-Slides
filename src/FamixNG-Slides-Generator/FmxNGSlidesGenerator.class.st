Class {
	#name : #FmxNGSlidesGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'presentation',
		'slide',
		'uri',
		'uriReference'
	],
	#category : #'FamixNG-Slides-Generator'
}

{ #category : #'as yet unclassified' }
FmxNGSlidesGenerator class >> generate [
	<script>
	^ self new generate
]

{ #category : #accessing }
FmxNGSlidesGenerator class >> packageName [
	^ 'FamixNG-Slides'
]

{ #category : #accessing }
FmxNGSlidesGenerator class >> prefix [
	^ 'Fmx'
]

{ #category : #definition }
FmxNGSlidesGenerator >> defineClasses [
	super defineClasses.
	presentation := builder newClassNamed: #Presentation.
	slide := builder newClassNamed: #Slide.
	uri := builder newClassNamed: #Uri.
	uriReference := builder newClassNamed: #UriReference.
]

{ #category : #definition }
FmxNGSlidesGenerator >> defineHierarchy [
	super defineHierarchy.
	
	presentation --|> namedEntity.
	
	slide --|> namedEntity.
	slide --|> #TWithReferences.
	
	uriReference --|> association.
	uriReference --|> #TReference.
	
	uri --|> entity.
	uri --|> #TReferenceable.
]

{ #category : #definition }
FmxNGSlidesGenerator >> defineProperties [
	uri
		property: #uri type: #String
]

{ #category : #definition }
FmxNGSlidesGenerator >> defineRelations [
	super defineRelations.
	
	(presentation property: #slides)
		<>-* (slide property: #presentation)
]
