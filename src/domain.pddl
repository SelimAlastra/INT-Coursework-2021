(define
    (domain vaccine-delivery)
    (:requirements :strips :typing :negative-preconditions) ; negative-preconditions?

    (:types
        person - object
        truck - object 
        location - object
    )

    (:predicates
        (at ?t - truck ?loc - location)
        (atPerson ?p - person ?loc - location)
        (connected ?startlocation - location ?endlocation - location)
        (vaccinated ?p - person)
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

    (:action vaccinate 
        :parameters (?t - truck ?trucklocation - location ?p - person)
        :precondition (and
            (atPerson ?p ?trucklocation) (at ?t ?trucklocation) (not (vaccinated ?p))
        )
        :effect (and 
            (vaccinated ?p)
        )
    )
    
)