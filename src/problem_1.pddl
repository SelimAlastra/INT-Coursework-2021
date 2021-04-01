  
(define
    (problem problem_1)
    (:domain vaccine-delivery)
    ;(:situation <situation_name>) ;deprecated
    (:objects 
        startLocation loc1 loc2 loc3 loc4 loc5 loc6 loc7 pickupLocation - location
        n1 n2 - nurse
        p1 p2 p3 p4 - person
    )
    (:init
        (vaccineOld n1)
        (vaccineYoung n2)

        (under60 p1) (not (under60 p1))
        (under60 p2) (not (under60 p2))
        (over60 p3) (not (under60 p3))
        (over60 p4) (not (under60 p4))

        (notVaccinated p1) (not (vaccinated p1))
        (notVaccinated p2) (not (vaccinated p2))
        (notVaccinated p3) (not (vaccinated p3))
        (notVaccinated p4) (not (vaccinated p4))
        
        (atPerson p1 loc5) (atPerson p2 loc3)
        (atPerson p3 loc6) (atPerson p4 loc7)
        (at n1 startLocation) (at n2 startLocation)

        (isPickUpLocation pickupLocation)
        (carryingVaccine n1) (not (notCarryingVaccine n1))
        (carryingVaccine n2) (not (notCarryingVaccine n2))

        (connected startlocation loc1) (connected loc1 startLocation)
        (connected loc1 loc7) (connected loc7 loc1)
        (connected loc1 loc6) (connected loc6 loc1)
        (connected loc4 loc6) (connected loc6 loc4)
        (connected loc4 loc5) (connected loc5 loc4)
        (connected loc2 loc4) (connected loc4 loc2)
        (connected loc2 loc3) (connected loc3 loc2)
        (connected loc3 pickupLocation) (connected pickupLocation loc3)
    )

    (:goal (and
        (vaccinated p1)
        (vaccinated p2)
        (vaccinated p3)
        (vaccinated p4)
        (at n1 startLocation)
        (at n2 startLocation)
        )
    )
)