(define
    (problem problem_2)
    (:domain vaccine-delivery)

    (:objects 
        t - truck 
        startLocation location1 location2 location3 location4 location5 location6 location7 location8 location9 location10 - location
        person1 person2 person3 person4 person5 person6 person7 person8 - person
    )
    (:init
            (at t startLocation)
            
            (not (vaccinated person1))
            (vaccinated person2)
            (not (vaccinated person3))

            (connected startLocation location1)
            (connected startLocation location3)
            (connected startLocation location5)
            (connected location1 location2)
            (connected location1 location4)
            (connected location2 location3)
            (connected location2 location4)
            (connected location3 location4)
            (connected location3 location5)
            (connected location4 location5)

        

            (atPerson person1 location1)
            (atPerson person2 location3)
            (atPerson person3 location5)
            (atPerson person4 location6)
            (atPerson person5 location6)
            (atPerson person6 location8)
            (atPerson person7 location9)
            (atPerson person8 location10)

    )

    (:goal (and
        (vaccinated person1)
        (vaccinated person2)
        (vaccinated person3)
        (at t startLocation)
        )
    )
)