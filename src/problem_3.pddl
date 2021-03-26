(define (problem problem3) (:domain vaccine-delivery)
(:objects 
    t1 - truck
    startLocation loc1 loc2 loc3 loc4 loc5 - location
    p1 - person
)
(:init
    (vaccineOld t1)

    (notVaccinated p1)
    (not (vaccinated p1))
    
    (at t1 startLocation)
    (atPerson p1 loc3)
    (over60 p1)
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

    (= (distanceBetween startLocation loc5) 1)
    (= (distanceBetween loc5 startLocation) 1)
    (= (distanceBetween loc4 loc5) 1)
    (= (distanceBetween loc5 loc4) 1)
    (= (distanceBetween loc4 loc3) 1)
    (= (distanceBetween loc3 loc4) 1)
    

    (= (distanceBetween startLocation loc1) 100)
    (= (distanceBetween loc1 startLocation) 100)
    (= (distanceBetween loc1 loc2) 100)
    (= (distanceBetween loc2 loc1) 100)
    (= (distanceBetween loc2 loc3) 100)
    (= (distanceBetween loc3 loc2) 100)


    (not (under60 p1))
    (over60 p1)

    (= (totalDistanceTravelled) 0)
)

(:goal (and
    (at t1 startLocation)
    (vaccinated p1)
))

(:metric minimize (totalDistanceTravelled))
)
