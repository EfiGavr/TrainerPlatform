package com.example.demo.service;

import com.example.demo.model.Trainer;
import java.util.List;

public interface TrainerServiceInterface {

    public void insertTrainer(Trainer trainer);

    public List<Trainer> getAllTrainers();

    public Trainer getTrainerById(Integer id);

    public void updateTrainer(Integer id, String firstname, String lastname, String subject);

    public void deleteTrainer(Integer id);

    @Override
    public boolean equals(Object obj);

    public boolean isUsersInputValid(String firstname, String lastname);

}
