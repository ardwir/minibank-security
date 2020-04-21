package my.minibank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import my.minibank.model.Transaksi;
import my.minibank.service.TransaksiService;

@Controller
public class TransaksiController {
	
	private TransaksiService transaksiService;
	
	@Autowired
	public void setTransaksiService(TransaksiService transaksiService) {
		this.transaksiService = transaksiService;
	}
	
	@RequestMapping(path="/transaksi", method=RequestMethod.GET)
	public String listTransaksi(Model model, int id_nasabah) {
		id_nasabah = 1;
		model.addAttribute("transaksi", new Transaksi());
		model.addAttribute("listTransaksi", this.transaksiService.listTransaksi(id_nasabah));
		return "transaksi";
	}

}