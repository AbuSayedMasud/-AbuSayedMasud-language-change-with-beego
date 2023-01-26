package controllers
//
//import (
//	"encoding/json"
//	"fmt"
//	"io/ioutil"
//	"os"
//	"strings"
//
//	beego "github.com/beego/beego/v2/server/web"
//	"github.com/beego/i18n"
//)
//
//type Hotel struct {
//	Name  string `json:"name"`
//	Image string `json:"image_url"`
//}
//
//var Langlan string
//
//type TestController struct {
//	beego.Controller
//}
//
//var Hotelsen []Hotel
//var Hotelses []Hotel
//var MapFunction = make(map[string][]Hotel)
//
//func dataRead(lang string, chaneel chan []byte) {
//	jsonFile, err := os.Open("static/json/" + lang + "-hotels.json")
//	//fmt.Println(jsonFile)
//
//	if err != nil {
//		fmt.Println(err)
//	}
//	//fmt.Println("Successfully Opened users.json")
//	defer jsonFile.Close()
//
//	byteValue, _ := ioutil.ReadAll(jsonFile)
//	chaneel <- byteValue
//
//}
//func init() {
//
//	fmt.Println("project running")
//	language, _ := beego.AppConfig.String("languages")
//	for _, lang := range strings.Split(language, "|") {
//		//fmt.Println(lang)
//		if err := i18n.SetMessage(lang, "static/lang/"+lang+".ini"); err != nil {
//			fmt.Println(err)
//		}
//
//	}
//	hotel_lan := make(map[int]string)
//	hotel_lan[0] = "en"
//	hotel_lan[1] = "es"
//
//	for i := 0; i < len(hotel_lan); i++ {
//		var lang string = hotel_lan[i]
//		//fmt.Println(lang)
//		chaneel := make(chan []byte)
//		go dataRead(lang, chaneel)
//		byteValue := <-chaneel
//		if lang == "en" {
//
//			json.Unmarshal(byteValue, &Hotelsen)
//			MapFunction["en"] = Hotelsen
//
//		} else {
//			json.Unmarshal(byteValue, &Hotelses)
//			MapFunction["es"] = Hotelses
//
//		}
//
//	}
//}
//
//func (c *TestController) Prepare() {
//	fmt.Println("Action is On")
//	browserLang := c.Ctx.Input.Header("Accept-Language")
//	//fmt.Println(browerLang)
//	langcode := browserLang[:2]
//	//fmt.Println(langcode)
//	if !i18n.IsExist(langcode) {
//		langcode = "en"
//	}
//	Langlan = langcode
//}
//func (c *TestController) Get() {
//	type Headings struct {
//		Hola        string
//		Deals       string
//		NearBy      string
//		Destination string
//		List        string
//		H11         string
//		H12         string
//		H13         string
//		H4          string
//	}
//	heading_details := Headings{"Hola", "Deals", "NearBy", "Destination", "List", "H11", "H12", "H13", "H4"}
//	c.Data[heading_details.Hola] = i18n.Tr(Langlan, "hola")
//	c.Data[heading_details.Deals] = i18n.Tr(Langlan, "deals")
//	c.Data[heading_details.NearBy] = i18n.Tr(Langlan, "nearBy")
//	c.Data[heading_details.Destination] = i18n.Tr(Langlan, "destination")
//	c.Data[heading_details.List] = i18n.Tr(Langlan, "list")
//	c.Data[heading_details.H11] = i18n.Tr(Langlan, "h11")
//	c.Data[heading_details.H12] = i18n.Tr(Langlan, "h12")
//	c.Data[heading_details.H13] = i18n.Tr(Langlan, "h13")
//	c.Data[heading_details.H4] = i18n.Tr(Langlan, "h4")
//
//	c.Data["s"] = MapFunction[Langlan]
//
//	c.TplName = "test.tpl"
//}