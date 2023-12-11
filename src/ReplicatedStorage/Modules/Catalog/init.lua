return {
	Accessories = require(script.Accessories),
	Clothes = require(script.Clothes),
	Animations = require(script.Animations),
	Body = require(script.Body),
	Appearance = require(script.Appearance)
}

--[[

The database may contain duplicated AssetId.
It may also contain Accessories with the same name. Which can probably lead to issues when customizing your avatar.


CATEGORY | LAST UPDATED | URL

Hat
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=9&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
HairAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=20&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
FaceAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=21&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
NeckAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=22&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
ShoulderAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=23&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
FrontAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=24&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
BackAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=25&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
WaistAccessory
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=26&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=

Face
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=10&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=
Heads
	December 29, 2019
	https://search.roblox.com/catalog/json?Subcategory=15&IncludeNotForSale=true&ResultsPerPage=60&PageNumber=

Animations
	December 29, 2019
	Manually go through all animation bundles cause there are only 17 of them
	
Bundles
	December 29, 2019
	You can get all the bundles by AssetService:GetBundleDetailsAsync() from 1 - 700+

Clothes
	December 29, 2019
	I only provided Roblox created Shirts and Pants that are still onsale. You can use your own clothing database
--]]