package bean;

import java.io.Serializable;

public class LoginBean implements Serializable{
   private static final long serialVersionUID = 2L;
         
   private String uid;
   private String passwd;
   
   final String _uid = "today";
   final String _passwd = "1234";
   
   
   public boolean checkUser() {
      if(uid.equals(_uid) && passwd.equals(_passwd)) {
         return true;
      }else {
         return false;
      }
   }
   public String getUid() {
      return uid;
   }
   public void setUid(String uid) {
      this.uid = uid;
   }
   public String getPasswd() {
      return passwd;
   }
   public void setPasswd(String passwd) {
      this.passwd = passwd;
   }
}