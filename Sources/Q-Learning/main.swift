import Kitura
import HeliumLogger

HeliumLogger.use()



let router = Router()
router.all("/", middleware: StaticFileServer())


Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.run()

