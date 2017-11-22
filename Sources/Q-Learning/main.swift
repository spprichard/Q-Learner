import Kitura
import HeliumLogger
#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

HeliumLogger.use()



let router = Router()
router.all("/", middleware: StaticFileServer())


Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()

