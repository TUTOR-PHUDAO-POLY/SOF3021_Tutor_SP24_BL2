package com.example.demo.B1_LamViecVoiForm.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class GiangVien {
    private String id;
    private String ma;
    private String ten;
    private int tuoi;
    private boolean gioiTinh;
    private String diaChi;
}
