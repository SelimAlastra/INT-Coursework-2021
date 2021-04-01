(define
    (problem problem_2)
    (:domain vaccine-delivery)
    (:objects 
        startLocation loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 pickupLocation - location
        p1 p2 p3 p4 p5 p6 p7 - person
        n1 n2 - nurse
    )
    (:init
        (vaccineOld n1)
        (vaccineYoung n2)

        (under60 p1) (not (over60 p1))
        (under60 p2) (not (over60 p2))
        (over60 p3) (not (under60 p3))
        (over60 p4) (not (under60 p4))
        (over60 p5) (not (under60 p5))
        (under60 p6) (not (over60 p6))
        (over60 p7) (not (under60 p7))

        (notVaccinated p1) (not (vaccinated p1))
        (notVaccinated p2) (not (vaccinated p2))
        (notVaccinated p3) (not (vaccinated p3))
        (notVaccinated p4) (not (vaccinated p4))
        (notVaccinated p5) (not (vaccinated p5))
        (notVaccinated p6) (not (vaccinated p6))
        (notVaccinated p7) (not (vaccinated p7))

        (atPerson p1 loc10) (atPerson p2 loc5)
        (atPerson p3 loc6) (atPerson p4 loc8)
        (atPerson p5 loc9) (atPerson p6 loc4)
        (atPerson p7 loc4)

        (isPickUpLocation pickupLocation)
        (carryingVaccine n1) (not (notCarryingVaccine n1))
        (carryingVaccine n2) (not (notCarryingVaccine n2))

        (connected startLocation loc3) (connected loc3 startLocation)
        (connected loc2 loc3) (connected loc3 loc2)
        (connected loc2 loc1) (connected loc1 loc2)
        (connected loc1 loc10) (connected loc10 loc1)
        (connected loc2 loc5) (connected loc5 loc2)
        (connected loc2 loc4) (connected loc4 loc2)
        (connected loc4 loc7) (connected loc7 loc4)
        (connected loc6 loc7) (connected loc7 loc6)
        (connected loc7 loc8) (connected loc8 loc7)
        (connected loc7 loc9) (connected loc9 loc7)
        (connected loc8 pickupLocation) (connected pickupLocation loc8)
        (connected loc9 pickupLocation) (connected pickupLocation loc9)
    )

    (:goal (and
        (vaccinated p1)
        (vaccinated p2)
        (vaccinated p3)
        (vaccinated p4)
        (vaccinated p5)
        (vaccinated p6)
        (vaccinated p7)
        (at n1 startLocation)
        (at n2 startLocation)
        )
    )
)