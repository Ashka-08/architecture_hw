from ItemFabric import ItemFabric
from GoldReward import GoldReward


class GoldGenerator(ItemFabric):

    def create_item(self):
        print("Создали сундук с золотом")
        return GoldReward()