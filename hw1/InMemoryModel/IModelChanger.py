from abc import ABC, abstractmethod


class IModelChanger(ABC):
    def __init__(self) -> None:
        pass
    
    @abstractmethod
    def notify_change(self, IModelChangersender) -> None:
        pass