/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.assignment__crud_2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Payal
 */
@RestController()
public class rest_controller {
    @Autowired
    employee_repo e1;
    @Autowired
    professor_repo p1;
    @Autowired
    departement_repo d1;
    @RequestMapping(value="/ad_emp",method=POST)
    public String ad_emp(employee e){
        e1.save(e);
       return"added employee" ;
    }
    @RequestMapping(value="/ad_pr",method=POST)
    public String ad_pr(proffessor p){
        p1.save(p);
        return "added proffessor";
    }
    @RequestMapping(value="/ad_dp",method=POST)
    public String ad_dp(String name){
        System.out.println(name);
        department d=new department();
        d.setD_name(name);
        d1.save(d);
        return "added department id is :"+d.d_id;
    }
    @RequestMapping(value="/read_emp",method=GET)
     public String read_emp(){
         List<employee> a=new ArrayList();
        Iterator ob=e1.findAll().iterator();
        while(ob.hasNext()){
            a.add((employee)ob.next());
        }
         
         return a.toString();
     }
     @RequestMapping(value="/read_dp",method=GET)
     public String read_dp(){
         List<department> a=new ArrayList();
        Iterator ob=d1.findAll().iterator();
        while(ob.hasNext()){
            a.add((department)ob.next());
        }
         
         return a.toString();
     }
     @RequestMapping(value="/read_pr",method=GET)
     public String read_pr(){
         List<proffessor> a=new ArrayList();
        Iterator ob=p1.findAll().iterator();
        while(ob.hasNext()){
            a.add((proffessor)ob.next());
        }
         return a.toString();
     }
     @RequestMapping(value="/read_em_id",method=GET)
     public String read_em_id(int id){
         System.out.println(id);
         List<employee> a=new ArrayList();
        Iterator ob=e1.getemployeeid(id).iterator();
        while(ob.hasNext()){
            a.add((employee)ob.next());
        }
         return a.toString();
     }
     @RequestMapping(value="/read_em_name",method=GET)
     public String read_em_nam(String name){
         System.out.println(name);
         List<employee> a=new ArrayList();
        Iterator ob=e1.gettemployeeName(name).iterator();
        while(ob.hasNext()){
            a.add((employee)ob.next());
        }
         return a.toString();
     }
     @RequestMapping(value="/read_em_name_id",method=GET)
     public String read_id_nam(String name,int id){
         System.out.println(name+": "+id);
         List<employee> a=new ArrayList();
        Iterator ob=e1.gettemployeeid_Name(name,id).iterator();
        while(ob.hasNext()){
            a.add((employee)ob.next());
        }
         return a.toString();
     }
     
     @RequestMapping(value="/read_pr_name",method=GET)
     public String pr_nam(){
         List<String> a=p1.getALlproffesor();
        /*Iterator ob=p1.getALlproffesor().iterator();
        while(ob.hasNext()){
            a.add((proffessor)ob.next());
        }*/
         return a.toString();
     }
     @RequestMapping(value="/read_pr_sub",method=GET)
     public String pr_sub(){
         List<String> a=p1.getALlsubject();
         return a.toString();
     }
      @RequestMapping(value="/read_pr_sal",method=GET)
     public String pr_sal(int sal){
         System.out.println(sal);
         List<String> a=p1.getALlsalary(sal);
         return a.toString();
     }   
     @RequestMapping(value="/read_em_sal",method=GET)
     public String gettemployesal(int sal){
         System.out.println(sal);
         List<employee> a=new ArrayList();
        Iterator ob=e1.gettemployesal(sal).iterator();
        while(ob.hasNext()){
            a.add((employee)ob.next());
        }
         return a.toString();
     }   
       
     
     
     
     }

