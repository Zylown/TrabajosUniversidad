package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.clase.Producto;

@RestController
@RequestMapping("/api/listar")
public class PruebaController {
    @GetMapping
    public List<Producto> lista(){

        List<Producto> datos = new ArrayList<>();
        Producto obj1 = new Producto(10,"Producto 1","Marca 1");
        Producto obj2 = new Producto(20,"Producto 2","Marca 2");

        datos.add(obj1);
        datos.add(obj2);

        return datos;
    }
}
