component accessors=true {
	property UserService;


	public component function init() {
		return this;
	}


	public void function default() {
		rc.users = variables.UserService.list();
	}
}
