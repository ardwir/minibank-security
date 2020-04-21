package my.minibank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import my.minibank.model.Voucher;
import my.minibank.service.VoucherService;

@Controller
public class VoucherController {
	
	VoucherService voucherService;
	
	@Autowired
	public void setVoucherService(VoucherService voucherService) {
		this.voucherService = voucherService;
	}
	
	@RequestMapping(path="/voucher", method=RequestMethod.GET)
	public String addVoucher(Model model) {
		model.addAttribute("voucher", new Voucher());
		return "voucher";
	}
	
	@RequestMapping(path="/voucher/add", method=RequestMethod.POST)
	public String saveVoucher(@ModelAttribute("voucher") Voucher v, RedirectAttributes attr) {
		this.voucherService.addVoucher(v);
		attr.addFlashAttribute("message", "success");
		attr.addFlashAttribute("provider", v.getProvider_voucher());
		attr.addFlashAttribute("nomor", v.getNomor_telepon());
		attr.addFlashAttribute("nominal", v.getNominal_voucher());
		attr.addFlashAttribute("token", v.getToken_voucher());
		return "redirect:/voucher";
	}

}
