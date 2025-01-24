package com.adminPanel.app.model;


import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Getter
@Setter
@Entity
@Table(name = "product_details")
public class ProductDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @OneToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Column(name = "expiration_date" , nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "Expiration Date Cannot Be NULL")
    @NotBlank
    private Date expirationDate;

    @Column(name = "manufacturer")
    @NotNull(message = "Manufacturer Cannot Be NULL")
    private String manufacturer;

    @Column(name = "price")
    @NotNull(message = "Price Cannot Be NULL")
    private Double price;

    @Column(name = "available", nullable = false)
    private Boolean available;
}