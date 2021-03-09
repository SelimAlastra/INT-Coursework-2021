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
            
            (not(vaccinated person1))
            (not (vaccinated person2))
            (not (vaccinated person3))

            (connected startLocation location1)
            (connected startLocation location3)
            (connected startLocation location5)

            (connected location1 startLocation)
            (connected location1 location2)
            (connected location1 location4)

            (connected location2 location1)
            (connected location2 location3)
            (connected location2 location4)
            (connected location3 startLocation)
            (connected location3 location2)
            (connected location3 location4)
            (connected location3 location5)
            (connected location4 location1)
            (connected location4 location2)
            (connected location4 location3)
            (connected location4 location5)
            (connected location5 startLocation)
            (connected location5 location3)
            (connected location5 location4)

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
        (vaccinated person3)
        (vaccinated person2)
        (vaccinated person1)
        (at t startLocation)
        )
    )
)