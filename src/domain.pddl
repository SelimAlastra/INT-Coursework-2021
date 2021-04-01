(define
    (domain vaccine-delivery)
    (:requirements :strips :typing :fluents) 

    (:types
        person - object 
        nurse - object 
        location - object
    )

    (:predicates
        (at ?n - nurse ?loc - location)
        (atPerson ?p - person ?loc - location)
        (connected ?startlocation - location ?endlocation - location)
        (notVaccinated ?p - person)
        (vaccinated ?p - person)
        (over60 ?p - person)
        (vaccineOld ?n - nurse)
        (vaccineYoung ?n - nurse)
        (under60 ?p - person)
        (isPickUpLocation ?loc - location)
        (carryingVaccine ?n - nurse)
        (notCarryingVaccine ?n - nurse)
    )

    (:action move
        :parameters (?n - nurse ?startlocation - location ?endlocation - location)
        :precondition (and
            (at ?n ?startlocation) (connected ?startlocation ?endlocation)
        )
        :effect (and
            (at ?n ?endlocation) 
            (not (at ?n ?startlocation))
        )
    )

    (:action vaccinateOld 
        :parameters (?n - nurse ?nurseLocation - location ?p - person)
        :precondition (and
            (atPerson ?p ?nurseLocation) (at ?n ?nurseLocation) (notVaccinated ?p) (over60 ?p) (vaccineOld ?n) (carryingVaccine ?n)
        )
        :effect (and 
            (not (notVaccinated ?p))
            (vaccinated ?p)
            (notCarryingVaccine ?n)
            (not (carryingVaccine ?n))
        )
    )

     (:action vaccinateYoung
        :parameters (?n - nurse ?nurseLocation - location ?p - person)
        :precondition (and
            (atPerson ?p ?nurseLocation) (at ?n ?nurseLocation) (notVaccinated ?p) (under60 ?p) (vaccineYoung ?n) (carryingVaccine ?n)
        )
        :effect (and 
            (not (notVaccinated ?p))
            (vaccinated ?p)
            (notCarryingVaccine ?n)
            (not (carryingVaccine ?n))
        )
    )

    (:action pickup
        :parameters (?n - nurse ?nurseLocation - location)
        :precondition (and
            (isPickUpLocation ?nurseLocation) (at ?n ?nurseLocation) (notCarryingVaccine ?n)
        )
        :effect (and
            (not (notCarryingVaccine ?n))
            (carryingVaccine ?n)
        )
    )
)