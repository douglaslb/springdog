package br.com.fiap.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.DogModel;

import br.com.fiap.repository.DogRepository;

@Controller
@RequestMapping("/")
public class DogController {
	
	public DogRepository repository=DogRepository.getInstance();
	
	
	
	@GetMapping()
	public String findAll(Model model) {	

		model.addAttribute("dogs", repository.findAll());
		return "index";
	}
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("dogModel") DogModel dogModel, 
					   Model model) {
		
		if("atualizar-dog".equals(page)) {
			model.addAttribute("dogModel", repository.findById(id));
		}
		
		return page;
	
	}
	
	
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("dog", repository.findById(id));
		return "detalhes-dog";
	}
	
	@PostMapping()
	public String save(@Valid DogModel dogModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "cadastrar-dog";
		}
		
		repository.save(dogModel);
		redirectAttributes.addFlashAttribute("messages", "Dog cadastrado no sistema!");
		
		return "redirect:/";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid DogModel dogModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "atualizar-dog";
		}
		
		dogModel.setId(id);
		repository.update(dogModel);
		redirectAttributes.addFlashAttribute("messages", "Dados do dog alterado com sucesso!");
		
		return "redirect:/";
		
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		repository.delete(id);
		redirectAttributes.addFlashAttribute("messages", "Dog excluído com sucesso!");

		return "redirect:/";
	}
	
}
