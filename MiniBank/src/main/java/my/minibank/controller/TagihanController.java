package my.minibank.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import my.minibank.model.Tagihan;
import my.minibank.model.Transaksi;
import my.minibank.service.TagihanService;

@Controller
public class TagihanController {

	TagihanService tagihanService;

	@Autowired
	public void setTagihanService(TagihanService tagihanService) {
		this.tagihanService = tagihanService;
	}

	@RequestMapping(value="/tagihan", method = RequestMethod.GET)
	public String listTransaksi(Model model, Integer id_nasabah) {
		id_nasabah=1;
		LocalDate today = LocalDate.now();
		String periode = today.minusMonths(1).getMonth().toString();
		int month = today.minusMonths(1).getMonthValue();
		int year = today.getYear();
		LocalDate jatuh_tempo = LocalDate.of(year, month, 25);
		String jatuh_tempo_formatted = jatuh_tempo.format(DateTimeFormatter.ofPattern("dd MMM yyyy"));

		int total_transaksi=0;
		List<Transaksi> list = this.tagihanService.listTransaksi(id_nasabah);
		for (Transaksi t : list) {
			total_transaksi=total_transaksi+t.getNominal_transaksi();
		}

		model.addAttribute("periode", translateMonth(periode));
		model.addAttribute("total_transaksi", total_transaksi);
		model.addAttribute("jatuh_tempo", jatuh_tempo_formatted);
		model.addAttribute("tagihan", this.tagihanService.getTagihan(id_nasabah));
		model.addAttribute("transaksi", new Transaksi());
		model.addAttribute("listTransaksi", this.tagihanService.listTransaksi(id_nasabah));
		return "tagihan";
	}


	@RequestMapping(value="/tagihan/update", method = RequestMethod.POST)
	public String updateTagihan(@ModelAttribute("tagihan")Tagihan t, RedirectAttributes attr) {
		this.tagihanService.updateTagihan(t);
		attr.addFlashAttribute("message", "success");
		attr.addFlashAttribute("nominal", t.getTotal_tagihan());
		return "redirect:/tagihan";
	}

	public String translateMonth(String month) {
		String translatedMonth=null;
		if(month.contentEquals("JANUARY")) {
			translatedMonth="JANUARI";
		}else if(month.contentEquals("FEBRUARY")) {
			translatedMonth="FEBRUARI";
		}else if(month.contentEquals("MARCH")) {
			translatedMonth="MARET";
		}else if(month.contentEquals("APRIL")) {
			translatedMonth="APRIL";
		}else if(month.contentEquals("MAY")) {
			translatedMonth="MEI";
		}else if(month.contentEquals("JUNE")) {
			translatedMonth="JUNI";
		}else if(month.contentEquals("JULY")) {
			translatedMonth="JULI";
		}else if(month.contentEquals("AUGUST")) {
			translatedMonth="AGUSTUS";
		}else if(month.contentEquals("SEPTEMBER")) {
			translatedMonth="SEPTEMBER";
		}else if(month.contentEquals("OCTOBER")) {
			translatedMonth="OKTOBER";
		}else if(month.contentEquals("JANUARY")) {
			translatedMonth="JANUARI";
		}else if(month.contentEquals("NOVEMBER")) {
			translatedMonth="NOVEMBER";
		}else if(month.contentEquals("DECEMBER")) {
			translatedMonth="DESEMBER";
		}
		return translatedMonth;
	}


}
