package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Category;
import pl.coderslab.repository.CategoryRepository;

import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/user/category")
public class CategoryController {

    @Autowired
    CategoryRepository categoryRepository;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public String allCategories(Model model) {
        List<Category> allCategories = categoryRepository.findAll();
        model.addAttribute("allCategories", allCategories);
        return "category/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addCategoryForm(Model model) {
        model.addAttribute("category", new Category());
        return "category/form";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addCategory(@ModelAttribute Category category) {
        category.setCreated(new Date());
        categoryRepository.save(category);
        return "redirect: all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editCategoryForm(Model model, @PathVariable Long id) {
        Category categoryToEdit = categoryRepository.findOne(id);
        model.addAttribute("category", categoryToEdit);
        return "category/editForm";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String editCategory(@ModelAttribute Category category, @PathVariable Long id) {
        Category dbCategory = categoryRepository.findOne(id);
        dbCategory.setName(category.getName());
        dbCategory.setUpdated(new Date());
        categoryRepository.save(dbCategory);
        return "redirect: /user/category/all";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    public String deleteCategory(@PathVariable Long id) {
        categoryRepository.delete(id);
        return "redirect: /user/category/all";
    }

}
