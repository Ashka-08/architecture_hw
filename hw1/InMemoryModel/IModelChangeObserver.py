from abc import ABC, abstractmethod


class IModelChangeObserver(ABC):
    def __init__(self) -> None:
        pass
    
    @abstractmethod
    def aplly_update_model() -> None:
        pass