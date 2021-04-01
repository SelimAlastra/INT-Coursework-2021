(define (problem problem3) (:domain vaccine-delivery)
(:objects 
    n1 - nurse
    startLocation loc1 loc2 loc3 loc4 loc5 - location
    p1 p2 - person
)
(:init
    (vaccineOld n1)

    (notVaccinated p1)
    (not (vaccinated p1))
    (notVaccinated p2)
    (not (vaccinated p2))

    (not (carryingVaccine n1))
    (notCarryingVaccine n1)
    (isPickUpLocation loc4)

    (at n1 startLocation)
    (atPerson p1 loc3)
    (atPerson p2 loc5)

    (connected startLocation loc1)
    (connected loc1 startLocation)
    (connected startLocation loc5)
    (connected loc5 startLocation)
    (connected loc1 loc2)
    (connected loc2 loc1)
    (connected loc2 loc3)
    (connected loc3 loc2)
    (connected loc5 loc4)
    (connected loc4 loc5)
    (connected loc4 loc3)
    (connected loc3 loc4)

    (not (under60 p1))
    (over60 p1)
    (not (under60 p2))
    (over60 p2)
)

(:goal (and
    (at n1 startLocation)
    (vaccinated p1)
    (vaccinated p2)
))

)
