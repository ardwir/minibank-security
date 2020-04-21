package my.minibank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import my.minibank.model.Telepon;
import my.minibank.service.TeleponService;

@Controller
public class TeleponController {
	
	TeleponService teleponService;
	
	@Autowired
	public void setTeleponService(TeleponService telepnService) {
		this.teleponService = teleponService;
	}
	
	@RequestMapping(path="/telepon", method=RequestMethod.GET)
	public String addTelepon(Model model) {
		model.addAttribute("telepon", new Telepon());
		return "telepon";
	}
	
	@RequestMapping(path="/telepon/add", method=RequestMethod.POST)
	public String saveTelepon(@ModelAttribute("telepon") Telepon tel, RedirectAttributes attr) {
		this.teleponService.addTelepon(tel);
		attr.addFlashAttribute("message", "success");
		attr.addFlashAttribute("provider", tel.getProvider_telepon());
		attr.addFlashAttribute("nomor", tel.getNomor_telepon());
		attr.addFlashAttribute("nominal", tel.getNominal_telepon());
		return "redirect:/telepon";
	}

}
