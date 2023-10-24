from abc import ABCMeta, abstractmethod
import zope.interface

from IGameItem import IGameItem


@zope.interface.implementer(IGameItem)
class ItemFabric(metaclass=ABCMeta):

    @abstractmethod
    def create_item(self):
        pass