package springjsf.model.dao.hibernate;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import springjsf.model.MemberTO;
import springjsf.model.dao.MemberDAO;

import java.util.List;



public class MemberDAOImpl implements MemberDAO {
    private HibernateTemplate hibernateTemplate;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.hibernateTemplate = new HibernateTemplate(sessionFactory);
    }

    public void addMember(MemberTO memberTO) {
        System.out.println(memberTO);
        hibernateTemplate.saveOrUpdate(memberTO);
    }

    @SuppressWarnings("unchecked")
    public MemberTO getMemberByName(final String userName) {
        MemberTO r = (MemberTO) hibernateTemplate.execute(new HibernateCallback() {
            public Object doInHibernate(Session session) throws HibernateException {
                Query query = session.createQuery("From MemberTO where username = :username");
                query.setString("username", userName);
                return query.uniqueResult();
            }
        });
        return r;
    }


    @SuppressWarnings("unchecked")
    public List<MemberTO> getAllMembers() {
        return hibernateTemplate.find("From MemberTO");
    }
}


