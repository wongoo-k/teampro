package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class LoginImpl
 *
 */
@WebListener
public class LoginImpl implements HttpSessionListener {

   public String user_id;
   public String user_pw;
   public static int total_user = 0 ;
    /**
     * Default constructor. 
     */
    public LoginImpl() {
        // TODO Auto-generated constructor stub
    }
    
    public LoginImpl(String user_id,String user_pw) {
        // TODO Auto-generated constructor stub
       this.user_id = user_id;
       this.user_pw = user_pw;
    }

   /**
     * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
       System.out.println("사용자 접속 !!! = " + this.user_id);
       total_user++;
    }

   /**
     * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
       System.out.println("사용자 접속 해제 !!! = " + this.user_id);
       total_user--;
       
    }

   @Override
   public void sessionCreated(HttpSessionEvent arg0) {
      // TODO Auto-generated method stub
       System.out.println("사용자 접속 !!! = " + this.user_id);
       total_user++;
      
   }

   @Override
   public void sessionDestroyed(HttpSessionEvent arg0) {
      // TODO Auto-generated method stub
       System.out.println("사용자 접속 해제 !!! = " + this.user_id);
       total_user--;
   }
   
}