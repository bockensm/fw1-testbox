component accessors=true {
	property HTTPService;


	public component function init() {
		return this;
	}


	public array function list() {
		var data = variables.HTTPService
			.get("https://jsonplaceholder.typicode.com/posts")
			.getData();

		return deserializeJSON(data);
	}
}
