package com.eml.UserFom;

public class UserForm {
 private String loginemail, loginpassword, loginhint;
 

public UserForm(String loginemail, String loginpassword, String loginhint) {
	super();
	this.loginemail = loginemail;
	this.loginpassword = loginpassword;
	this.loginhint = loginhint;
}
public String getLoginemail() {
	return loginemail;
}
public void setLoginemail(String loginemail) {
	this.loginemail = loginemail;
}
public String getLoginpassword() {
	return loginpassword;
}
public void setLoginpassword(String loginpassword) {
	this.loginpassword = loginpassword;
}
public String getLoginhint() {
	return loginhint;
}
public void setLoginhint(String loginhint) {
	this.loginhint = loginhint;
}
 
}
