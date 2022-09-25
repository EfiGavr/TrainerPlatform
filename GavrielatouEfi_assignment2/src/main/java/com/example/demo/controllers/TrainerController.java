package com.example.demo.controllers;

import com.example.demo.model.Trainer;
import com.example.demo.service.TrainerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("trainer")
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerService;

    @PostMapping("/insert")
    public String insertTrainer(
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("subject") String subject,
            ModelMap mm) {
        //i know this code should not be here
        boolean isValidInput = trainerService.isUsersInputValid(firstname, lastname);
        if (!isValidInput) {
            mm.put("errorMessage", "First Name and Last Name should include only letters");
            return redirectInsert();
        } else {
            Trainer trainer = new Trainer(firstname, lastname, subject);
            trainerService.insertTrainer(trainer);
            mm.addAttribute("alltrainers", trainerService.getAllTrainers());
            return redirectViewWithoutModelMap();
        }
    }

    @GetMapping("/update/{trainerId}")
    public String updateTrainer(@PathVariable Integer trainerId,
            ModelMap mm) {
        Trainer trainer = trainerService.getTrainerById(trainerId);
        mm.addAttribute("trainertoupdate", trainer);
        return "trainerupdateform";
    }

    @PostMapping("/update/trainer/doupdate")
    public String doupdateTrainer(
            @RequestParam("trainerId") Integer newtrainerId,
            @RequestParam("firstname") String newfirstname,
            @RequestParam("lastname") String newlastname,
            @RequestParam("subject") String newsubject,
            ModelMap mm) {
        trainerService.updateTrainer(newtrainerId, newfirstname, newlastname, newsubject);
        mm.addAttribute("alltrainers", trainerService.getAllTrainers());
        return "trainerlist";
    }

    @GetMapping("/delete/{trainerId}")
    public String deleteTrainer(@PathVariable Integer trainerId,
            ModelMap mm) {
        trainerService.deleteTrainer(trainerId);
        mm.addAttribute("alltrainers", trainerService.getAllTrainers());
        return "trainerlist";
    }

    @GetMapping("/redirectTrainerList")
    public String redirectView(ModelMap mm) {
        mm.addAttribute("alltrainers", trainerService.getAllTrainers());
        return "trainerlist";
    }

    public String redirectViewWithoutModelMap() {
        return "trainerlist";
    }

    @GetMapping("/redirectTrainerListView")
    public String redirectViewTrainerList(ModelMap mm) {
        mm.addAttribute("alltrainers", trainerService.getAllTrainers());
        return "trainerView";
    }

    @GetMapping("/redirectTrainerInsert")
    public String redirectInsert() {
        return "trainerform";
    }
}
