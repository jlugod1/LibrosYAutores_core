package com.joselugo.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;

@Controller
public class ControladorLibros {

    private static HashMap<String, String> listaLibros = new HashMap<String, String>();

    public ControladorLibros() {
        listaLibros.put("Odisea", "Homero");
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");
        listaLibros.put("El alquimista", "Paulo Coelho");
    }

    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model model) {
        // Pasamos el HashMap al modelo para que esté disponible en la vista
        model.addAttribute("listaLibros", listaLibros);
        return "libros.jsp";  // Devolvemos el nombre de la vista JSP (sin .jsp)
    }
    
    
    @GetMapping("/libros/{nombre}")
   
	public String obtenerInformacionDeLibro(@PathVariable String nombre,Model model ) {
    if (listaLibros.containsKey(nombre)) {
        model.addAttribute("nombreLibro", nombre);
        model.addAttribute("autor", listaLibros.get(nombre));
    } else {
        model.addAttribute("error","El libro no se encuentra en nuestra lista");
    }
    return "detalleLibro.jsp"; // JSP para mostrar el detalle de la receta
}
   

    @GetMapping("/libros/formulario")
    public String formularioLibro() {
        return "formularioLibros.jsp"; 
    }

    @PostMapping("/procesa/libro")
    public String procesaLibro(@RequestParam String nombreLibro, @RequestParam String nombreAutor) {
        listaLibros.put(nombreLibro, nombreAutor);
        return "redirect:/libros";  
    }
} 
    
    
    


