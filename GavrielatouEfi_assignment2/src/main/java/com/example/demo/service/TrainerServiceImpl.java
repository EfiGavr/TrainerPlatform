package com.example.demo.service;

import com.example.demo.model.Trainer;
import com.example.demo.repos.TrainerRepository;
import com.example.demo.utils.Validation;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    public void insertTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
    }

    @Override
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    public Trainer getTrainerById(Integer id) {
        return trainerRepository.findById(id).get();
    }

    @Override
    public void updateTrainer(Integer id, String firstname, String lastname, String subject) {
        Trainer trainer = getTrainerById(id);
        trainer.setFirstname(firstname);
        trainer.setLastname(lastname);
        trainer.setSubject(subject);
        trainerRepository.save(trainer);
    }

    @Override
    public void deleteTrainer(Integer id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public boolean isUsersInputValid(String firstname, String lastname) {
        Validation val1 = new Validation();
        boolean rightInput = val1.isInputValid(firstname, lastname);
        return rightInput;
    }
}
