//package com.example.demo.Buoi4.entity;
//
//import jakarta.persistence.*;
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//
//@Entity
//@Table(name = "may_tinh")
//@Getter
//@Setter
//@NoArgsConstructor
//@AllArgsConstructor
//public class MayTinh {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    @Column(name = "id")
//    private Long id;
//
//    @ManyToOne
//    @JoinColumn(name = "hang_id", referencedColumnName = "id")
//    private Hang hang;
//
//    @Column(name = "ma")
//    private String ma;
//
//    @Column(name = "ten_may_tinh")
//    private String tenMayTinh;
//
//    @Column(name = "gia")
//    private Float gia;
//
//    @Column(name = "mau_sac")
//    private String mauSac;
//
//    @Column(name = "mieu_ta")
//    private String mieuTa;
//
//    @Column(name = "bo_nho")
//    private String boNho;
//
//}
