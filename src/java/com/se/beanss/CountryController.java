/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.se.beanss;

import com.se.ejb.CountryFacade;
import com.se.models.Country;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author samrith
 */

@Named(value = "countryController")

public class CountryController implements Serializable {

//    /**
//     * Creates a new instance of CountryController
//     */
//    public CountryController() {
//    }
//    
//    @EJB
//    CountryFacade countryFacade = new CountryFacade();
//    
//    @Inject
//    CountryBeans countryBeans;
//    
//    public List<Country> getAll(){
//     return countryFacade.findAll();
//    }
//    
//    public String add(){
//        Country c = new Country(
//                countryBeans.getId(),
//                countryBeans.getIso(),
//                countryBeans.getName(),
//                countryBeans.getNicename(),
//                countryBeans.getPhonecode()
//                            );
//        c.setIso3(countryBeans.getIso3());
//        c.setNumcode(countryBeans.getNumcode());
//        countryFacade.create(c);
//        return "index";
//    }
//    public int count(){
//        return countryFacade.count();
//    }
//    
    
    
}
