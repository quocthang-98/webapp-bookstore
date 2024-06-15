package com.webapp.model;

public class UserModel extends AbstractModel<UserModel>{
	private Long roleId;
	private String firstName;
	private String lastName;
	private String email;
	private String address;
	private String tel;
	private String username; 
	private String password;
	private Integer code;
	private RoleModel roleModel = new RoleModel();
	
	
	private Integer isLastNameNotOK = 0;
	private Integer isLastNameNull = 0;
	
	private Integer isEmailNotOK = 0;
	private Integer isEmailNull = 0;
	private Integer isEmailDublicate = 0;
	private Integer isEmailInvalid = 0;
	
	
	private Integer isUserameNotOK = 0;
	private Integer isUsernameNull = 0;
	private Integer isUsernameDublicate = 0;
	
	private Integer isPasswordNotOK = 0;
	private Integer isPasswordNull = 0;
	private Integer isPasswordUnvalidated = 0;
	
	private Integer messageWrongCode;
	
	public Integer getMessageWrongCode() {
		return messageWrongCode;
	}
	public void setMessageWrongCode(Integer messageWrongCode) {
		this.messageWrongCode = messageWrongCode;
	}
	public Integer getIsEmailInvalid() {
		return isEmailInvalid;
	}
	public void setIsEmailInvalid(Integer isEmailInvalid) {
		this.isEmailInvalid = isEmailInvalid;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public Integer getIsPasswordUnvalidated() {
		return isPasswordUnvalidated;
	}
	public void setIsPasswordUnvalidated(Integer isPasswordUnvalidated) {
		this.isPasswordUnvalidated = isPasswordUnvalidated;
	}
	public Integer getIsPasswordNotOK() {
		return isPasswordNotOK;
	}
	public void setIsPasswordNotOK(Integer isPasswordNotOK) {
		this.isPasswordNotOK = isPasswordNotOK;
	}
	public Integer getIsPasswordNull() {
		return isPasswordNull;
	}
	public void setIsPasswordNull(Integer isPasswordNull) {
		this.isPasswordNull = isPasswordNull;
	}
	public Integer getIsLastNameNotOK() {
		return isLastNameNotOK;
	}
	public void setIsLastNameNotOK(Integer isLastNameNotOK) {
		this.isLastNameNotOK = isLastNameNotOK;
	}
	public Integer getIsLastNameNull() {
		return isLastNameNull;
	}
	public void setIsLastNameNull(Integer isLastNameNull) {
		this.isLastNameNull = isLastNameNull;
	}
	public Integer getIsEmailNotOK() {
		return isEmailNotOK;
	}
	public void setIsEmailNotOK(Integer isEmailNotOK) {
		this.isEmailNotOK = isEmailNotOK;
	}
	public Integer getIsEmailNull() {
		return isEmailNull;
	}
	public void setIsEmailNull(Integer isEmailNull) {
		this.isEmailNull = isEmailNull;
	}
	public Integer getIsEmailDublicate() {
		return isEmailDublicate;
	}
	public void setIsEmailDublicate(Integer isEmailDublicate) {
		this.isEmailDublicate = isEmailDublicate;
	}
	public Integer getIsUserameNotOK() {
		return isUserameNotOK;
	}
	public void setIsUserameNotOK(Integer isUserameNotOK) {
		this.isUserameNotOK = isUserameNotOK;
	}
	public Integer getIsUsernameNull() {
		return isUsernameNull;
	}
	public void setIsUsernameNull(Integer isUsernameNull) {
		this.isUsernameNull = isUsernameNull;
	}
	public Integer getIsUsernameDublicate() {
		return isUsernameDublicate;
	}
	public void setIsUsernameDublicate(Integer isUsernameDublicate) {
		this.isUsernameDublicate = isUsernameDublicate;
	}
	public RoleModel getRoleModel() {
		return roleModel;
	}
	public void setRoleModel(RoleModel roleModel) {
		this.roleModel = roleModel;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
}
		