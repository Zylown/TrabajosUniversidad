package com.example.demo.clase;

public class Producto {
    private int codigo;
    private String nombre;
    private String marca;

    public Producto(int codigo, String nombre, String marca) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.marca = marca;
    }

    public int getCodigo() {
        return this.codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return this.marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    

}
