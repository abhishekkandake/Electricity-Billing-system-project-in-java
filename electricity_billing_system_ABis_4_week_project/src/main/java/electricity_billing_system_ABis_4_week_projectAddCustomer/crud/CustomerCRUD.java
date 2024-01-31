package electricity_billing_system_ABis_4_week_projectAddCustomer.crud;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import electricity_billing_system_ABis_4_week_projectAddCustomer.dto.Customerr;

public class CustomerCRUD {
	public EntityManager getEntityManager() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("abhi");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		return entityManager;
	}
	public Customerr saveCustomer(Customerr customer) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(customer);
		entityTransaction.commit();
		return customer;
	}
	public Customerr updateCustomer(int mitterno,Customerr customer) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer2=(Customerr)query.getSingleResult();
		if(customer2!=null) {
			customer.setName(customer2.getName());
			customer.setMitterno(customer2.getMitterno());
			customer.setCity(customer2.getCity());
			customer.setState(customer2.getState());
			customer.setEmail(customer2.getEmail());
			customer.setPhone(customer2.getPhone());
			
			entityTransaction.begin();
			entityManager.merge(customer);
			entityTransaction.commit();
		}
		return customer;
	}
	public List<Customerr> displayAll(){
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c");
		List<Customerr> customers=query.getResultList();
		System.out.println(customers);
		return customers;
	}
	public String displayBillType(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		String billtype =" ";
		if(customer!=null) {
			billtype = customer.getBilltype();
		}
		System.out.println(billtype);
		return billtype;
	}
	public String displayCity(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		String city =" ";
		if(customer!=null) {
			city = customer.getCity();
		}
		System.out.println(city);
		return city;
	}
	public String displayState(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		String state =" ";
		if(customer!=null) {
			state = customer.getState();
		}
		System.out.println(state);
		return state;
	}
	public String displayMitterloc(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		String mitterloc =" ";
		if(customer!=null) {
			mitterloc = customer.getMitterloc();
		}
		System.out.println(mitterloc);
		return mitterloc;
	}
	public String displayMittertype(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		String mittertype =" ";
		if(customer!=null) {
			mittertype = customer.getMittertype();
		}
		System.out.println(mittertype);
		return mittertype;
	}
	public int displayPhaseCode(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		int phasecode = 0;
		if(customer!=null) {
			 phasecode = customer.getPhasecode();
		}
		return phasecode;
	}
	public Long displayPhone(int mitterno) {
		EntityManager entityManager = getEntityManager();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer=(Customerr)query.getSingleResult();
		long phone = 0;
		if(customer!=null) {
			phone = customer.getPhone();
		}
		System.out.println(phone);
		return phone;
	}
	public Customerr customerUpdate(int mitterno,Customerr customer) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		Query query=entityManager.createQuery("select c from Customerr c where mitterno = ?1");
		query.setParameter(1, mitterno);
		Customerr customer2=(Customerr)query.getSingleResult();
		if(customer2!=null) {
			
			customer.setMitterno(customer2.getMitterno());
			entityTransaction.begin();
			entityManager.merge(customer);
			entityTransaction.commit();
		}
		return customer;
	}
}
