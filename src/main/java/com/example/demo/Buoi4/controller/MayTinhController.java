package com.example.demo.Buoi4.controller;

import com.example.demo.Buoi4.entity.Hang;
import com.example.demo.Buoi4.entity.MayTinh;
import com.example.demo.Buoi4.repository.HangRepository;
import com.example.demo.Buoi4.repository.MayTinhRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class MayTinhController {

    @Autowired
    private MayTinhRepository mayTinhRepository;

    @Autowired
    private HangRepository hangRepository;

    @GetMapping("/may-tinh/hien-thi")
    public String getAll(Model model) {
        List<MayTinh> list = mayTinhRepository.findAll();
        model.addAttribute("lists", list);
        return "/buoi4/index";
    }

    @GetMapping("/may-tinh/delete/{id}")
    public String delete(@PathVariable Long id) {
        mayTinhRepository.deleteById(id);
        return "redirect:/may-tinh/hien-thi";
    }

    @GetMapping("/may-tinh/view-add")
    public String viewAdd(Model model) {
        List<Hang> listHang = hangRepository.findAll();
        model.addAttribute("lists", listHang);
        return "/buoi4/add";
    }

    @PostMapping("/may-tinh/add")
    public String add(MayTinh mayTinh) {
        mayTinhRepository.save(mayTinh);
        return "redirect:/may-tinh/hien-thi";
    }

}
