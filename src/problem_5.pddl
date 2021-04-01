(define (problem problem3) (:domain vaccine-delivery)
(:objects 
    nurse1 nurse2 - nurse
    startLocation loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 hospital1 hospital2 - location
    p1 p2 p3 p4 p5 p6 p7 - person
)
(:init
    (vaccineOld nurse1)
    (vaccineYoung nurse2)

    (not (carryingVaccine nurse1))
    (notCarryingVaccine nurse1)
    (not (carryingVaccine nurse2))
    (notCarryingVaccine nurse2)

    (notVaccinated p1)
    (not (vaccinated p1))
    (notVaccinated p2)
    (not (vaccinated p2))
    (notVaccinated p3)
    (not (vaccinated p3))
    (notVaccinated p4)
    (not (vaccinated p4))
    (notVaccinated p5)
    (not (vaccinated p5))
    (notVaccinated p6)
    (not (vaccinated p6))
    (notVaccinated p7)
    (not (vaccinated p7))

    (not (under60 p1))
    (over60 p1)
    (not (under60 p4))
    (over60 p4)
    (not (under60 p5))
    (over60 p5)
    (not (under60 p7))
    (over60 p7)
    (under60 p2)
    (not(over60 p2))
    (under60 p3)
    (not(over60 p3))
    (under60 p6)
    (not(over60 p6))

    (isPickUpLocation hospital1)
    (isPickUpLocation hospital2)

    (at nurse1 startLocation)
    (at nurse2 startLocation)
    (atPerson p1 loc2)
    (atPerson p2 loc2)
    (atPerson p3 loc6)
    (atPerson p4 loc8)
    (atPerson p5 loc7)
    (atPerson p6 loc4)
    (atPerson p7 hospital1)

    (connected startLocation loc1)
    (connected loc1 startLocation)
    (connected startLocation loc5)
    (connected loc5 startLocation)
    (connected loc1 loc2)
    (connected loc2 loc1)
    (connected loc1 loc3)
    (connected loc3 loc1)
    (connected loc2 loc3)
    (connected loc3 loc2)
    (connected loc2 loc4)
    (connected loc4 loc2)
    (connected loc3 loc4)
    (connected loc4 loc3)
    (connected loc4 hospital2)
    (connected hospital2 loc4)
    (connected loc8 hospital2)
    (connected hospital2 loc8)
    (connected loc8 loc7)
    (connected loc7 loc8)
    (connected loc5 loc6)
    (connected loc6 loc5)
    (connected loc7 loc6)
    (connected loc6 loc7)
    (connected loc3 loc7)
    (connected loc7 loc3)
    (connected hospital1 loc8)
    (connected loc8 hospital1)
    (connected hospital1 loc7)
    (connected loc7 hospital1)
    (connected hospital1 loc6)
    (connected loc6 hospital1)
)

(:goal (and
    (at nurse1 startLocation)
    (vaccinated p1)
    (vaccinated p2)
    (vaccinated p3)
    (vaccinated p4)
    (vaccinated p5)
    (vaccinated p6)
    (vaccinated p7)
)))
