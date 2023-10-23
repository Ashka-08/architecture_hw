from PoligonalModel import PoligonalModel
from Flash import Flash
from Camera import Camera


class Scene:
    def __init__(self, id: int, models: PoligonalModel, flashes: Flash, cameras: Camera) -> None:
        self.id = id
        if models is not None:
            self.models = models
        self.flashes = flashes
        if cameras is not None:
            self.cameras = cameras

    def method_1(self, data) -> None:
        pass

    def method_2(self, data1, data2) -> None:
        pass

    def method_3(self, data1, data2, data3) -> None:
        pass