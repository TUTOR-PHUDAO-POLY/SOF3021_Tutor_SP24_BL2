package com.example.demo.B1_LamViecVoiForm.controller;

import com.example.demo.B1_LamViecVoiForm.entity.GiangVien;
import lombok.Getter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/giang-vien")
public class GiangController {

    private List<GiangVien> listGiangVien = new ArrayList<>();

    public GiangController() {
        listGiangVien.add(new GiangVien("a", "a", "a", 1, true, "a"));
        listGiangVien.add(new GiangVien("b", "b", "b", 2, false, "a"));
        listGiangVien.add(new GiangVien("c", "c", "c", 3, true, "a"));
        listGiangVien.add(new GiangVien("d", "d", "d", 4, false, "a"));
        listGiangVien.add(new GiangVien("e", "e", "e", 5, true, "a"));
    }

    @GetMapping("/hien-thi")
    public String hienThiGiangVien(Model model) {
        model.addAttribute("list", listGiangVien);
        return "giangviens";
    }

    @GetMapping("/remove/{id}")
    public String remove(@PathVariable String id) {
        for (int i = 0; i < listGiangVien.size(); i++) {
            if (listGiangVien.get(i).getId().equalsIgnoreCase(id)) {
                listGiangVien.remove(i);
            }
        }
        return "redirect:/giang-vien/hien-thi";
    }

}
