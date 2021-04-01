(define
    (problem problem_2)
    (:domain vaccine-delivery)
    (:objects 
        loc1 loc2 loc3 loc4 loc5 loc6 loc7 pickupLocation - location
        p1 p2 p3 p4 - person
        n1 n2 - nurse
    )
    (:init
        (vaccineOld n1)
        (vaccineYoung n2)

        (under60 p1) (not (over60 p1))
        (under60 p2) (not (over60 p2))
        (over60 p3) (not (under60 p3))
        (over60 p4) (not (under60 p4))

        (notVaccinated p1) (not (vaccinated p1))
        (notVaccinated p2) (not (vaccinated p2))
        (notVaccinated p3) (not (vaccinated p3))
        (notVaccinated p4) (not (vaccinated p4))
 
        (atPerson p1 loc4) (atPerson p2 loc5)
        (atPerson p3 loc7) (atPerson p4 loc3)
        (at n1 loc1) (at n2 loc1)

        (isPickUpLocation pickupLocation)
        (carryingVaccine n1) (not (notCarryingVaccine n1))
        (carryingVaccine n2) (not (notCarryingVaccine n2))

        (connected loc1 loc2) (connected loc2 loc1)
        (connected loc1 pickupLocation) (connected pickupLocation loc1)
        (connected pickupLocation loc3) (connected loc3 pickupLocation)
        (connected loc2 loc4) (connected loc4 loc2)
        (connected loc2 loc5) (connected loc5 loc2)
        (connected loc5 loc6) (connected loc6 loc5)
        (connected loc6 loc7) (connected loc7 loc6)
    )

    (:goal (and
        (vaccinated p1)
        (vaccinated p2)
        (vaccinated p3)
        (vaccinated p4)
        (at n1 loc1)
        (at n2 loc1)
        )
    )
)