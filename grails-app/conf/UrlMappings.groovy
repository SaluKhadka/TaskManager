class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

/*
        "/"(action: "index",controller: "project")
*/
        "/"(action: "index",controller: "users")
        "500"(view:'/error')
	}
}
