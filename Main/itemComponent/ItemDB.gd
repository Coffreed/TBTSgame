extends Node
 
const ICON_PATH = "res://Main/itemComponent/icons/"
const ITEMS = {
	"sword": {
		"icon": ICON_PATH + "sword.png",
		"slot": "MAIN_HAND"
	},
	"epicsword": {
		"icon": ICON_PATH + "epicsword.png",
		"slot": "MAIN_HAND"
	},
	"exoticdagger": {
		"icon": ICON_PATH + "exoticdagger.png",
		"slot": "MAIN_HAND"
	},
	"greataxe": {
		"icon": ICON_PATH + "greataxe.png",
		"slot": "MAIN_HAND"
	},
	"hksmg": {
		"icon": ICON_PATH + "hksmg.png",
		"slot": "MAIN_HAND"
	},
	"maschinegun": {
		"icon": ICON_PATH + "maschinegun.png",
		"slot": "MAIN_HAND"
	},
	"musket": {
		"icon": ICON_PATH + "musket.png",
		"slot": "MAIN_HAND"
	},
	"revolver": {
		"icon": ICON_PATH + "revolver.png",
		"slot": "MAIN_HAND"
	},
	"swordpng": {
		"icon": ICON_PATH + "swordpng.png",
		"slot": "MAIN_HAND"
	},
	"bikerhelm": {
		"icon": ICON_PATH + "BikerHelm.png",
		"slot": "HEAD"
	},
	"breastplate": {
		"icon": ICON_PATH + "breastplate.png",
		"slot": "CHEST"
	},
	"coat": {
		"icon": ICON_PATH + "coat.png",
		"slot": "CHEST"
	},
	"coat1": {
		"icon": ICON_PATH + "coat1.png",
		"slot": "CHEST"
	},
	"bootsOfWisdom": {
		"icon": ICON_PATH + "bootsOfWisdom.png",
		"slot": "LEGS"
	},
	"flakers": {
		"icon": ICON_PATH + "flakers.png",
		"slot": "LEGS"
	},
	"potato": {
		"icon": ICON_PATH + "potato.png",
		"slot": "NONE"
	},
	"error":{
		"icon": ICON_PATH + "error.png",
		"slot": "NONE"
	}
}
 
func get_item(item_id):
	if item_id in ITEMS:
		return ITEMS[item_id]
	else:
		return ITEMS["error"]
