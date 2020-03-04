component extends="testbox.system.BaseSpec" {
	function run() {
		feature("User Service", function() {
			story("We should be able to list users", function() {
				given("the user service", function() {
					var userService = request.beanFactory.getBean("UserService");

					when("listing users", function() {
						var users = userService.list();

						then("the list should be an array", function() {
							expect(users).toBeArray();
						});

						then("the list should not be empty", function() {
							expect(users).notToBeEmpty();
						});
					});
				})
			});
		});
	}
}
