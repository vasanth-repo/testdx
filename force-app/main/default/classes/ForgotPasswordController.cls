/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference devforgotPassword() {
  		boolean devsuccess = Site.forgotPassword(username);
  		PageReference devpr = Page.ForgotPasswordConfirm;
  		devpr.setRedirect(true);
  		
  		if (devsuccess) {  			
  			return devpr;
  		}
  		return null;
  	}
}
