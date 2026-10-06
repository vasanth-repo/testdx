/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference mainforgotPassword() {
  		boolean mainsuccess = Site.forgotPassword(username);
  		PageReference mainpr = Page.ForgotPasswordConfirm;
  		mainpr.setRedirect(true);
  		
  		if (mainsuccess) {  			
  			return mainpr;
  		}
  		return null;
  	}
}
