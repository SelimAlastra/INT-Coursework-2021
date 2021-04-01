(define (problem problem9) (:domain vaccine-delivery)
; Head of States  problem file
(:objects 
    n1 n2 - nurse
    belgium uk france germany italy spain  - location
    queenUk primeMinistUk presFr primeMinistFr chancelor presIt primeMinistIt kingSp, primeMinistSp - person
)
(:init
    (vaccineOld n1)
    (vaccineYoung n2)

    (notVaccinated queenUk) (not (vaccinated queenUk))
    (notVaccinated primeMinistUk) (not (vaccinated primeMinistUk))
    (notVaccinated presFr) (not (vaccinated presFr))
    (notVaccinated primeMinistFr) (not (vaccinated primeMinistFr))
    (notVaccinated chancelor) (not (vaccinated chancelor))
    (notVaccinated presIt) (not (vaccinated presIt))
    (notVaccinated primeMinistIt) (not (vaccinated primeMinistIt))
    (notVaccinated kingSp) (not (vaccinated kingSp))
    (notVaccinated primeMinistSp) (not (vaccinated primeMinistSp))
    
    (not (carryingVaccine n1)) (notCarryingVaccine n1)

    (not (carryingVaccine n2)) (notCarryingVaccine n2)

    (isPickUpLocation uk)

    (at n1 belgium)
    (at n2 belgium)
    
    (atPerson queenUk uk)
    (atPerson primeMinistUk uk)
    (atPerson presFr france)
    (atPerson primeMinistFr france)
    (atPerson chancelor germany)
    (atPerson presIt italy)
    (atPerson primeMinistIt italy)
    (atPerson kingSp spain)
    (atPerson primeMinistSp spain)

    (connected uk france) (connected france uk)
    (connected uk germany) (connected germany uk)
    (connected france germany) (connected germany france)
    (connected france spain) (connected spain france)
    (connected france italy) (connected italy france)
    (connected spain germany) (connected germany spain)
    (connected spain italy) (connected italy spain)

    (connected belgium uk) (connected uk belgium)
    (connected belgium germany) (connected germany belgium)
    (connected belgium france) (connected france belgium)
    
    (not (under60 queenUk)) (over60 queenUk)
    (under60 primeMinistUk) (not (over60 primeMinistUk))
    (under60 presFr) (not (over60 presFr))
    (under60 primeMinistFr) (not (over60 primeMinistFr))
    (not (under60 chancelor)) (over60 chancelor)
    (not (under60 presIt)) (over60 presIt)
    (not (under60 primeMinistIt)) (over60 primeMinistIt)
    (not (under60 kingSp)) (over60 kingSp)
    (under60 primeMinistSp) (not (over60 primeMinistSp))
)

(:goal (and
    (at n1 belgium)
    (at n2 belgium)
    (vaccinated queenUk)
    (vaccinated primeMinistUk)
    (vaccinated presFr)
    (vaccinated primeMinistFr)
    (vaccinated chancelor)
    (vaccinated presIt)
    (vaccinated primeMinistIt)
    (vaccinated kingSp)
    (vaccinated primeMinistSp)
)))
