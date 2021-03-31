(define (problem problem3) (:domain vaccine-delivery)
(:objects 
    nurse1 nurse2 - nurse
    startLocation loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 hospital - location
    p1 p2 p3 p4 p5 - person
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

    (not (under60 p1))
    (over60 p1)
    (not (under60 p5))
    (over60 p5)
    (under60 p2)
    (not(over60 p2))
    (under60 p3)
    (not(over60 p3))
    (under60 p4)
    (not(over60 p4))

    (isPickUpLocation hospital)

    (at nurse1 startLocation)
    (at nurse2 startLocation)
    (atPerson p1 loc3)
    (atPerson p2 loc5)
    (atPerson p3 loc8)
    (atPerson p4 loc2)
    (atPerson p5 loc1)

    (connected startLocation hospital)
    (connected hospital startLocation)
    (connected hospital loc3)
    (connected loc3 hospital)
    (connected hospital loc2)
    (connected loc2 hospital)
    (connected hospital loc4)
    (connected loc4 hospital)
    (connected hospital loc6)
    (connected loc6 hospital)
    (connected loc1 loc2)
    (connected loc2 loc1)
    (connected loc1 loc4)
    (connected loc4 loc1)
    (connected loc2 loc3)
    (connected loc3 loc2)
    (connected loc4 loc5)
    (connected loc5 loc4)
    (connected loc5 loc6)
    (connected loc6 loc5)
    (connected loc5 loc7)
    (connected loc7 loc5)
    (connected loc7 loc8)
    (connected loc8 loc7)
    (connected loc8 loc9)
    (connected loc9 loc8)
    (connected loc1 loc9)
    (connected loc9 loc1)

    (= (distanceBetween startLocation hospital) 1)
    (= (distanceBetween hospital startLocation) 1)
    (= (distanceBetween hospital loc3) 1)
    (= (distanceBetween loc3 hospital) 1)
    (= (distanceBetween hospital loc2) 1)
    (= (distanceBetween loc2 hospital) 1)
    (= (distanceBetween hospital loc4) 2)
    (= (distanceBetween loc4 hospital) 2)
    (= (distanceBetween loc1 loc2) 2)
    (= (distanceBetween loc2 loc1) 2)
    (= (distanceBetween loc2 loc3) 2)
    (= (distanceBetween loc3 loc2) 2)
    (= (distanceBetween loc4 loc5) 1)
    (= (distanceBetween loc5 loc4) 1)
    (= (distanceBetween loc5 loc6) 2)
    (= (distanceBetween loc6 loc5) 2)
    (= (distanceBetween loc5 loc7) 1)
    (= (distanceBetween loc7 loc5) 1)
    (= (distanceBetween loc7 loc8) 2)
    (= (distanceBetween loc8 loc7) 2)
    (= (distanceBetween loc8 loc9) 1)
    (= (distanceBetween loc9 loc8) 1)
    (= (distanceBetween loc1 loc9) 1)
    (= (distanceBetween loc9 loc1) 1)
    (= (distanceBetween loc1 loc4) 1)
    (= (distanceBetween loc4 loc1) 1)
    (= (distanceBetween loc9 loc4) 3)
    (= (distanceBetween loc4 loc9) 3)


    (= (totalDistanceTravelled) 0)
)

(:goal (and
    (at nurse1 startLocation)
    (at nurse2 startLocation)
    (vaccinated p1)
    (vaccinated p2)
    (vaccinated p3)
    (vaccinated p4)
    (vaccinated p5)
))

(:metric minimize (totalDistanceTravelled))
)
