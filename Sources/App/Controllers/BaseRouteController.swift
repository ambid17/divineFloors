import Vapor

class BaseRouteController: RouteCollection {
    func boot(router: Router) throws {
        router.get(use: indexHandler)
        router.get("about", use: aboutHandler)
        router.get("gallery", use: galleryHandler)
        router.get("services", use: servicesHandler)
        router.get("contact", use: contactHandler)
    }

    func indexHandler(_ req: Request) throws -> Future<View> {
        return try req.view().render("Children/index.leaf")
    }

    func aboutHandler(_ req: Request) throws -> Future<View> {
        return try req.view().render("Children/about.leaf")
    }

    func galleryHandler(_ req: Request) throws -> Future<View> {
        return try req.view().render("Children/gallery.leaf")
    }

    func servicesHandler(_ req: Request) throws -> Future<View> {
        return try req.view().render("Children/services.leaf")
    }

    func contactHandler(_ req: Request) throws -> Future<View> {
        return try req.view().render("Children/contact.leaf")
    }
}