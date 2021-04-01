(define (problem problem8) (:domain vaccine-delivery)
; Retirement Homes  problem file
(:objects 
    n1 n2 - nurse
    startLocation retirHome1 retirHome2 retirHome3 pickUpLocation  - location
    p1 p2 p3 p4 p5 p6 p7 - person
)
(:init
    (vaccineOld n1)
    (vaccineOld n2)

    (notVaccinated p1)
    (not (vaccinated p1))
    (notVaccinated p2)
    (not (vaccinated p2))
    (notVaccinated p3)
    (not (vaccinated p3))
    (notVaccinated p6)
    (not (vaccinated p6))
    (notVaccinated p7)
    (not (vaccinated p7))

    (not (notVaccinated p4))
    (vaccinated p4)
    (not (notVaccinated p5))
    (vaccinated p5)

    
    

    (not (carryingVaccine n1))
    (notCarryingVaccine n1)

    (not (carryingVaccine n2))
    (notCarryingVaccine n2)

    (isPickUpLocation pickUpLocation)

    (at n1 startLocation)
    (at n2 startLocation)
    
    (atPerson p1 retirHome1)
    (atPerson p2 retirHome1)
    (atPerson p3 retirHome1)
    (atPerson p4 retirHome2)
    (atPerson p5 retirHome2)
    (atPerson p6 retirHome3)
    (atPerson p7 retirHome3)

    (connected startLocation retirHome1)
    (connected retirHome1 startLocation)
    (connected startLocation retirHome2)
    (connected retirHome2 startLocation)
    (connected retirHome2 retirHome3)
    (connected retirHome3 retirHome2)
    (connected retirHome1 pickUpLocation)
    (connected pickUpLocation retirHome1)
    (connected retirHome3 pickUpLocation)
    (connected pickUpLocation retirHome3)

    (not (under60 p1))
    (over60 p1)
    (not (under60 p2))
    (over60 p2)
    (not (under60 p3))
    (over60 p3)
    (not (under60 p4))
    (over60 p4)
    (not (under60 p5))
    (over60 p5)
    (not (under60 p6))
    (over60 p6)
    (not (under60 p7))
    (over60 p7)
)

(:goal (and
    (at n1 startLocation)
    (at n2 startLocation)
    (vaccinated p1)
    (vaccinated p2)
    (vaccinated p3)
    (vaccinated p4)
    (vaccinated p5)
    (vaccinated p6)
    (vaccinated p7)
)))
