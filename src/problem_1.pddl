(define
    (problem problem_1)
    (:domain vaccine-delivery)
    ;(:situation <situation_name>) ;deprecated
    (:objects 
        t - truck 
        startLocation location1 location2 location3 location4 location5 - location
        person1 person2 person3 - person
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

    )

    (:goal (and
        (vaccinated person1)
        (vaccinated person2)
        (vaccinated person3)
        (at t startLocation)
        )
    )
)