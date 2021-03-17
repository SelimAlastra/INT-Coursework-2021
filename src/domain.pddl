(define
    (domain vaccine-delivery)
    (:requirements :strips :typing :fluents) 

    (:types
        person - object 
        truck - object 
        location - object
    )

    (:predicates
        (at ?t - truck ?loc - location)
        (atPerson ?p - person ?loc - location)
        (connected ?startlocation - location ?endlocation - location)
        (notVaccinated ?p - person)
        (vaccinated ?p - person)
        (over60 ?p - person)
        (vaccineOld ?t - truck)
        (vaccineYoung ?t - truck)
        (under60 ?p - person)
        (isHospital ?loc - location)
    )

    (:functions
        (numberOfVaccines ?t - truck)
        (vaccinesRequired ?p - person)
    )

    (:action move
        :parameters (?t - truck ?startlocation - location ?endlocation - location)
        :precondition (and
            (at ?t ?startlocation) (connected ?startlocation ?endlocation)
        )
        :effect (and
            (at ?t ?endlocation) (not (at ?t ?startlocation))
        )
    )

    (:action vaccinateOld 
        :parameters (?t - truck ?trucklocation - location ?p - person)
        :precondition (and
            (atPerson ?p ?trucklocation) (at ?t ?trucklocation) (notVaccinated ?p) (over60 ?p) (vaccineOld ?t) (>= (numberOfVaccines ?t) (vaccinesRequired ?p))
        )
        :effect (and 
            (not (notVaccinated ?p))
            (vaccinated ?p)
            (decrease (numberOfVaccines ?t) (vaccinesRequired ?p))
        )
    )

    (:action vaccinateYoung
        :parameters (?t - truck ?trucklocation - location ?p - person)
        :precondition (and
            (atPerson ?p ?trucklocation) (at ?t ?trucklocation) (notVaccinated ?p) (under60 ?p) (vaccineYoung ?t) (>= (numberOfVaccines ?t) (vaccinesRequired ?p))
        )
        :effect (and 
            (not (notVaccinated ?p))
            (vaccinated ?p)
            (decrease (numberOfVaccines ?t) (vaccinesRequired ?p))
        )
    )

    (:action pickup
        :parameters (?t - truck ?truckLocation - location ?pickupLocation - location)
        :precondition (and
            (at ?t ?pickupLocation) (= (numberOfVaccines ?t) 0) (isHospital ?pickupLocation) (at ?t ?truckLocation)
        )
        :effect (and
            (increase (numberOfVaccines ?t) 5) 
        )
    )
    
)