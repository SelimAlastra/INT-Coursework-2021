(define (problem problem3) (:domain vaccine-delivery)
(:objects 
    t1 t2 - truck
    startLocation loc1 loc2 loc3 loc4 loc5 - location
    p1 p2 p3 p4 p5 - person
)

(:init
    (vaccineOld t1)
    (vaccineYoung t2)
    
    (at t1 startLocation)
    (at t2 startLocation)

    (atPerson p1 loc1)
    (atPerson p2 loc2)
    (atPerson p3 loc3)
    (atPerson p4 loc4)
    (atPerson p5 loc5)

    (over60 p2) (not (under60 p2))
    (over60 p3) (not (under60 p3))
    (over60 p5) (not (under60 p5))
    (under60 p1) (not (over60 p1))
    (under60 p4) (not (over60 p4))
    
    (connected startLocation loc1) (connected loc1 startLocation)
    (connected startLocation loc5) (connected loc5 startLocation)
    (connected startLocation loc4) (connected loc4 startLocation)
    (connected startLocation loc3) (connected loc3 startLocation)
    (connected loc5 loc4) (connected loc4 loc5)
    (connected loc4 loc3) (connected loc3 loc4)
    (connected loc1 loc2) (connected loc2 loc1)
    (connected loc2 loc3) (connected loc3 loc2)
    (connected loc2 loc5) (connected loc5 loc2)
    (connected loc1 loc4) (connected loc4 loc1)
    (connected loc2 loc4) (connected loc4 loc2)

    (= (distanceBetween startLocation loc1) 1)
    (= (distanceBetween loc1 startLocation) 1)
    (= (distanceBetween startLocation loc5) 1)
    (= (distanceBetween loc5 startLocation) 1)
    (= (distanceBetween startLocation loc4) 1)
    (= (distanceBetween loc4 startLocation) 1)
    (= (distanceBetween startLocation loc3) 1)
    (= (distanceBetween loc3 startLocation) 1)
    (= (distanceBetween loc5 loc4) 100)
    (= (distanceBetween loc4 loc5) 100)
    (= (distanceBetween loc4 loc3) 100)
    (= (distanceBetween loc3 loc4) 100)
    (= (distanceBetween loc1 loc2) 100)
    (= (distanceBetween loc2 loc1) 100)
    (= (distanceBetween loc2 loc3) 1)
    (= (distanceBetween loc3 loc2) 1)
    (= (distanceBetween loc2 loc5) 1)
    (= (distanceBetween loc5 loc2) 1)
    (= (distanceBetween loc1 loc4) 1)
    (= (distanceBetween loc4 loc1) 1)
    (= (distanceBetween loc2 loc4) 100)
    (= (distanceBetween loc4 loc2) 100)

    (= (distanceTravelled t1) 0)
    (= (distanceTravelled t2) 0)
)

(:goal (and
    (at t1 startLocation)
    (at t2 startLocation)
    (vaccinated p1)
    (vaccinated p2)
    (vaccinated p3)
    (vaccinated p4)
    (vaccinated p5)
))

(:metric minimize (totalDistanceTravelled))
)
