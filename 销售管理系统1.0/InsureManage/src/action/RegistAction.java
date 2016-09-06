package action;

import model.User;

import com.opensymphony.xwork2.ActionSupport;

import dao.RegistDao;
import dao.impl.RegistDaoImp;

public class RegistAction extends ActionSupport{
		private RegistDao regist = new RegistDaoImp();
		private User user;
		private String password2;
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public String getPassword2() {
			return password2;
		}
		public void setPassword2(String password2) {
			this.password2 = password2;
		}
		public  String execute() throws Exception {
			regist.Regist(user);
			return SUCCESS;
		}
		
}
