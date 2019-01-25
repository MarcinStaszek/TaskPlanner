package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Plan;
import pl.coderslab.model.Task;
import pl.coderslab.repository.PlanRepository;
import pl.coderslab.repository.TaskRepository;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user/plan")
public class PlanController {

    @Autowired
    PlanRepository planRepository;

    @Autowired
    TaskRepository taskRepository;

    @RequestMapping(value = "/details/{planId}", method = RequestMethod.GET)
    public String planDetails(Model model, @PathVariable Long planId) {
        List<Task> planTasks = taskRepository.findAllByPlanId(planId);
        model.addAttribute("tasks", planTasks);
        return "plan/details";
    }

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String allPlans(Model model) {
        List<Plan> allPlans = planRepository.findAll();
        model.addAttribute("allPlans", allPlans);
        return "plan/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPlanForm(Model model) {
        model.addAttribute("plan", new Plan());
        return "plan/form";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPlan(@ModelAttribute Plan plan) {
        plan.setCreated(new Date());
        planRepository.save(plan);
        return "redirect: all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editPlanForm(Model model, @PathVariable Long id) {
        Plan planToEdit = planRepository.findOne(id);
        model.addAttribute("plan", planToEdit);
        return "plan/editForm";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editPlan(@ModelAttribute Plan plan, @PathVariable Long id) {
        Plan dbPlan = planRepository.findOne(id);
        dbPlan.setName(plan.getName());
        dbPlan.setDescription(plan.getDescription());
        dbPlan.setUpdated(new Date());
        planRepository.save(dbPlan);
        return "redirect: /user/plan/all";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String deletePlan(@PathVariable Long id) {
        planRepository.delete(id);
        return "redirect: /user/plan/all";
    }

}
