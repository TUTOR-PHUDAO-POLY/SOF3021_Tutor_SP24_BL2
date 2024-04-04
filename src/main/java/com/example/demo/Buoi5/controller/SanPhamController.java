package com.example.demo.Buoi5.controller;

import com.example.demo.Buoi5.entity.LoaiSp;
import com.example.demo.Buoi5.entity.SanPham;
import com.example.demo.Buoi5.repository.LoaiSanPhamRepository;
import com.example.demo.Buoi5.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Optional;

@Controller
public class SanPhamController {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private LoaiSanPhamRepository loaiSanPhamRepository;

    @GetMapping("/san-pham/hien-thi")
    public String getAll(Model model) {
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("list", sanPhamList);
        List<LoaiSp> loaiSanPhamList = loaiSanPhamRepository.findAll();
        model.addAttribute("listLoaiSanPham", loaiSanPhamList);
        return "/buoi5/sanphams";
    }

    @GetMapping("/san-pham/remove/{id}")
    public String remove(@PathVariable Integer id) {
        sanPhamRepository.deleteById(id);
        return "redirect:/san-pham/hien-thi";
    }

    @PostMapping("/san-pham/add")
    public String add(SanPham sanPham) {
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("/san-pham/detail/{id}")
    public String detail(Model model, @PathVariable Integer id) {
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("list", sanPhamList);
        Optional<SanPham> optionalSanPham = sanPhamRepository.findById(id);
        if (optionalSanPham.isPresent()) {
            model.addAttribute("sanpham", optionalSanPham.get());
        }
        return "/buoi5/sanphams";
    }

    @GetMapping("/san-pham/update/{id}")
    public String formUpdate(Model model, @PathVariable Integer id) {
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("list", sanPhamList);
        Optional<SanPham> optionalSanPham = sanPhamRepository.findById(id);
        if (optionalSanPham.isPresent()) {
            model.addAttribute("sp", optionalSanPham.get());
        }
        return "/buoi5/sanphams";
    }

    @PostMapping("/san-pham/{id}")
    public String update(SanPham sanPham) {
        sanPhamRepository.save(sanPham);
        return "redirect:/san-pham/hien-thi";
    }

}
