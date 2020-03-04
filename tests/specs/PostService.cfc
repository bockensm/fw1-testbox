component extends="testbox.system.BaseSpec" {
	function run() {
		feature("Post Service", function() {
			story("We should be able to retrieve posts", function() {
				given("the post service", function() {
					var postsService = request.beanFactory.getBean("PostsService");

					when("listing posts", function() {
						var posts = postsService.list();

						then("the list should be an array", function() {
							expect(posts).toBeArray();
						});

						then("the list should not be empty", function() {
							expect(posts).notToBeEmpty();
						});
					});
				})
			});
		});
	}
}
