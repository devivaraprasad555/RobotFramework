from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop:

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def add_items_to_the_card_checkout(self, productsList):
        i = 1
        productTitles = self.selLib.get_webelements("css:.card-title")
        for items in productTitles:
            if items.text in productsList:
                self.selLib.click_button("xpath:(//div[@class='card-footer'])["+str(i)+"]/button")
            i = i + 1

        #self.selLib.click_link('xpath://li[@class="nav-item active"]/a')
