component accessors=true {
	public component function init() {
		return this;
	}


	public array function sortArray(required array data) {
		arraySort(arguments.data, "textnocase", "ASC");

		return arguments.data;
	}
}
