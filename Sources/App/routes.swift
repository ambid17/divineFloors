import Vapor

public func routes(_ router: Router) throws {
    let baseRouteController = BaseRouteController()
    try router.register(collection: baseRouteController)
}
