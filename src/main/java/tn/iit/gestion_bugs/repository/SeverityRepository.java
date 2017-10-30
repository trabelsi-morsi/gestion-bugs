package tn.iit.gestion_bugs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tn.iit.gestion_bugs.entities.Severity;

@Repository
public interface SeverityRepository extends JpaRepository<Severity, Long> {

}
