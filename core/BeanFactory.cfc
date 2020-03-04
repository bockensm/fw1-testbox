component extends="framework.ioc" {
	public component function init() {
		return super.init(
			folders: [ "/model", "/controllers" ],
			config: {}
		);
	}
}
