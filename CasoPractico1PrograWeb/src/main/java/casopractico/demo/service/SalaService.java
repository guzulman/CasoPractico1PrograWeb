/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package casopractico.demo.service;

import casopractico.demo.entity.Sala;
import casopractico.demo.repository.SalaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author jcga5
 */
@Service
public class SalaService implements ISalaService{
    
    @Autowired
    private SalaRepository salaRepository;

    @Override
    public List<Sala> listSala() {
        return (List<Sala>)salaRepository.findAll();
    }

    
}
