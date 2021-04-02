(define (problem problem_7)
    (:domain vaccine-delivery)
    ; City problem file 
    (:objects
        n1 n2 - nurse
        startLocation st1 st2 st3 st4 st5 st6 highway pickUpLocation - location
        p1 p2 p3 - person
    )
    (:init
        (vaccineOld n1)
        (vaccineYoung n2)

        (notVaccinated p1)
        (not (vaccinated p1))
        (notVaccinated p2)
        (not (vaccinated p2))
        (notVaccinated p3)
        (not (vaccinated p3))

        (not (carryingVaccine n1))
        (notCarryingVaccine n1)

        (not (carryingVaccine n2))
        (notCarryingVaccine n2)

        (isPickUpLocation pickUpLocation)

        (at n1 startLocation)
        (at n2 startLocation)

        (atPerson p1 st4)
        (atPerson p2 st5)
        (atPerson p3 st5)

        (connected startLocation pickUpLocation)
        (connected pickUpLocation startLocation)
        (connected pickUpLocation st1)
        (connected st1 pickUpLocation)
        (connected st1 st2)
        (connected st2 st1)
        (connected st2 st3)
        (connected st3 st2)
        (connected st3 st4)
        (connected st4 st3)
        (connected st4 st5)
        (connected st5 st4)
        (connected st5 st6)
        (connected st6 st5)
        (connected pickUpLocation highway)
        (connected highway pickUpLocation)
        (connected st3 highway)
        (connected highway st3)
        (connected st6 highway)
        (connected highway st6)

        (not (under60 p1))
        (over60 p1)
        (not (under60 p2))
        (over60 p2)
        (not (over60 p3))
        (under60 p3)
    )

    (:goal
        (and
            (at n1 startLocation)
            (at n2 startLocation)
            (vaccinated p1)
            (vaccinated p2)
            (vaccinated p3)
        )
    )
)