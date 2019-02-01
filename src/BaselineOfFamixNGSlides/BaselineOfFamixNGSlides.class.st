Class {
	#name : #BaselineOfFamixNGSlides,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixNGSlides
}

{ #category : #baselines }
BaselineOfFamixNGSlides >> baseline: spec [
	<baseline>
	spec
    for: #common
    do: [
      "Packages"
      spec
        package: 'FamixNG-Slides-Tests';
        package: 'FamixNG-Slides-Generator'.
		spec group: 'Tutorial' with: #('FamixNG-Slides-Tests').
		spec group: 'Solution' with: #('FamixNG-Slides-Tests' 'FamixNG-Slides-Generator') ]
]
