from datetime import datetime


class Ticket:
    def __init__(self, rootNumber: int, place: int, dateTime: datetime) -> None:
        self.__rootNumber = rootNumber
        self.__place = place
        self.__dateTime = dateTime
        self.__isValid = True

    def getRootNumber(self) -> int:
        return self.__rootNumber

    def getPlace(self) -> int:
        return self.__place

    def getDateTime(self) -> datetime:
        return self.__dateTime

    def getValid(self) -> bool:
        return self.__isValid
    
    def setValid(self, status: bool) -> None:
        self.__isValid = status

    def __str__(self) -> str:
        return f'Билет № {self.getRootNumber()} место {self.getPlace()}'

if __name__ == "__main__":
    print(ticket := Ticket(1, 10, datetime.now()))