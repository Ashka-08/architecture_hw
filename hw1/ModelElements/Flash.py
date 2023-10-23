from Stuff import Angle3D, Point3D, Color


class Flash:
    def __init__(self, 
                location: Point3D, 
                angle: Angle3D, 
                color: Color, 
                power: float) -> None:
        self.location = location
        self.angle = angle
        self.color = color
        self.power = power

    def rotate(angle: Angle3D) -> None:
        pass

    def move(location: Point3D) -> None:
        pass