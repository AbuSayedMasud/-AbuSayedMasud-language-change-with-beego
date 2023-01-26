package routers

import (
	"project/controllers"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
    beego.Router("/", &controllers.MainController{})
	//beego.Router("/test/", &controllers.TestController{})
}
