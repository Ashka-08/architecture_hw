from PoligonalModel import PoligonalModel
from Flash import Flash
from Camera import Camera


class Scene:
    def __init__(self, id: int, poligonal_models, flashes: Flash, cameras) -> None:
        self.id = id
        if len(poligonal_models) > 1:
            self.models = poligonal_models
        else:
            raise Exception('В списке должно быть более 1 экземпляров класса PoligonalModel')
        self.flashes = flashes
        if len(cameras) > 1:
            self.cameras = cameras
        else:
            raise Exception('В списке должно быть более 1 экземпляров класса Camera')

    def method_1(self, data) -> None:
        pass

    def method_2(self, data1, data2) -> None:
        pass

    def method_3(self, data1, data2, data3) -> None:
        pass