component extends="framework.one" {
	this.name = "fw1-testbox";

	variables.framework = {
		diEngine: "none", // Don't let FW/1 manage this automatically
		reloadApplicationOnEveryRequest: true
	};


	function setupApplication() {
		this.setBeanFactory( new core.BeanFactory() );
	}
}
