package com.example.demo.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "trainer")
@NamedQueries({
    @NamedQuery(name = "Trainer.findAll", query = "SELECT t FROM Trainer t"),
    @NamedQuery(name = "Trainer.findByTrainerId", query = "SELECT t FROM Trainer t WHERE t.trainerId = :trainerId"),
    @NamedQuery(name = "Trainer.findByFirstname", query = "SELECT t FROM Trainer t WHERE t.firstname = :firstname"),
    @NamedQuery(name = "Trainer.findByLastname", query = "SELECT t FROM Trainer t WHERE t.lastname = :lastname"),
    @NamedQuery(name = "Trainer.findBySubject", query = "SELECT t FROM Trainer t WHERE t.subject = :subject")})
public class Trainer implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "trainer_id")
    private Integer trainerId;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "subject")
    private String subject;

    public Trainer() {
    }

    public Trainer(String firstname, String lastname, String subject) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.subject = subject;
    }

    public Trainer(Integer trainerId) {
        this.trainerId = trainerId;
    }

    public Integer getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(Integer trainerId) {
        this.trainerId = trainerId;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (trainerId != null ? trainerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Trainer)) {
            return false;
        }
        Trainer other = (Trainer) object;
        if ((this.trainerId == null && other.trainerId != null) || (this.trainerId != null && !this.trainerId.equals(other.trainerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.demo.model.Trainer[ trainerId=" + trainerId + " ]";
    }

}
