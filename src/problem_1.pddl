(define
    (problem problem_1)
    (:domain vaccine-delivery)
    ;(:situation <situation_name>) ;deprecated
    (:objects 
        t1 t2 - truck 
        startLocation location1 location2 location3 location4 location5 - location
        person1 person2 person3 - person
    )
    (:init
            (at t1 startLocation)
            (at t2 startLocation)
            
            (notVaccinated person1)
            (notVaccinated person2)
            (notVaccinated person3)
            (not(vaccinated person1))
            (not(vaccinated person2))
            (not(vaccinated person3))

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

            (not (over60 person1))
            (not (over60 person2))
            (over60 person3)
            (under60 person1)
            (under60 person2)
            (not (under60 person3))

            (vaccineOld t1)
            (vaccineYoung t2)
    )

    (:goal (and
        (at t1 startLocation)
        (at t2 startLocation)
        (vaccinated person3)
        (vaccinated person1)
        (vaccinated person2)
        )
    )
)