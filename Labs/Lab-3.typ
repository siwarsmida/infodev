#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
   

    
    (
      name: "ouerghi mariem",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
    (
      name: "siwar smida",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),

  

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= Exercise
In this lab, we will create a basic web application using *Genie* framework in Julia. The application will allow us to control the behaviour of a sine wave, given some adjustble parameters. we are required to carry out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

#exo[Sine Wave Control][We provide the Julia and HTML codes to build and run a webapp that allow us to control the amplitude, phase, samples, Frequency and offset off a sine wave:


Samples: This slider adjusts the number of samples used to generate the sine wave. The range is from 10 to 1000, with steps of 10.


Amplitude: This slider adjusts the amplitude of the sine wave. The range is from 0 to 3, with steps of 0.5.

Frequency: This slider adjusts the frequency of the sine wave. The range is from 0 to 10, with steps of 1.


Offset: This slider adjusts the offset of the sine wave. The range is from -3.141 to 3.141, with steps of 1.


Phase: This slider adjusts the phase of the sine wave. The range is from -0.5 to 1, with steps of 0.1.


The Sinewave section at the bottom displays the generated sine wave based on the parameters set above. ]

#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")


#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in @fig:genie-webapp.

#figure(
	image("Images/Capture d’écran 2024-04-24 122846.png", width: 100%),
	caption: "Genie -> Sine Wave",
) <fig:genie-webapp>

*we are asked to add two extra sliders that modify the behaviour of the sine wave graph:*
	+ _Phase_ ranging between $-pi$ and $pi$, changes by a step of $pi/100$
	+ _Offset_ varies from $-0.5$ to $1$, by a step of $0.1$.


