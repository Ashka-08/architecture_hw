from ItemFabric import ItemFabric
from RubyReward import RubyReward


class RubyGenerator(ItemFabric):

    def create_item(self):
        print("Создали сундук c рубином")
        return RubyReward()