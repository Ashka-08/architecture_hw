import zope.interface
from IGameItem import IGameItem


@zope.interface.implementer(IGameItem)
class RubyReward:
    def open(self):
        print("Открыли сундук с рубином")
