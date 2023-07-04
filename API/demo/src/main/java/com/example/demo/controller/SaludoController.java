package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/Saludos")
public class SaludoController {

    @GetMapping
    public String Saludar(){
        return "Hola UTP";
    }
/* 
    @GetMapping("/{Nombre}")
    public String Saludar (@PathVariable("Nombre") String nombre){
        return "Hola " + nombre;
    }*/

    @GetMapping("/{Numero}")
public String primo (@PathVariable("Numero") int numero) {
    if (numero <= 1) {
        return "El número no es primo";
    }
//12 ; 12 % 2 = 0
    for (int i = 2; i < numero; i++) {
        if (numero % i == 0) {
            return "El número no es primo";
        }
    }

    return "El número es primo.";
}
}
