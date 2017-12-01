package tn.iit.gestion_bugs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.iit.gestion_bugs.entities.Priority;

@Repository
public interface PriorityRepository extends JpaRepository<Priority, Long> {

}
