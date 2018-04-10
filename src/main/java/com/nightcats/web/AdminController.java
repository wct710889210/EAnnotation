package com.nightcats.web;

import com.nightcats.data.AgeQuantity;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
public class AdminController {
    @RequestMapping("/admin")
    public String admin(){
        Configuration configuration = new Configuration();
        configuration.addClass(AgeQuantity.class);
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction ts = session.beginTransaction();
        Query query = session.createQuery("from AgeQuantity");
        List<AgeQuantity> list = query.list();
        ts.commit();
        session.close();
        for(AgeQuantity r:list){
            System.out.print(r.getId()+"--");
            System.out.print(r.getAge()+"--");
            System.out.println(r.getCount());
        }
        return "admin";
    }
}
