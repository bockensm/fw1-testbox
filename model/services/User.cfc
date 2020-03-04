component accessors=true {
	property SharedService;


	public component function init() {
		return this;
	}


	public array function list() {
		var data = [
			"Toby",
			"Michael",
			"Andy",
			"Jim",
			"Dwight"
		];

		data = variables.SharedService.sortArray(data);

		return data;
	}
}
