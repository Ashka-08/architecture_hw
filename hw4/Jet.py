class Jet():
    __listRow = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K']
    __min_row = 2
    __max_row = 10

    def __init__(self, placeCount: int, rowCount: int) -> None:
        self.__placeCount = placeCount
        self.__rowCount = rowCount
        if self.__min_row <= rowCount <= self.__max_row:
            self.__rowCount = rowCount
            self.__rows = self.__listRow[:rowCount:]
        else:
            raise Exception(f'Количество рядов должно быть в пределах \
                [{self.__min_row}, {self.__max_row}]')

    def getPlaceCount(self) -> int:
        return self.__placeCount
    
    def getRowCount(self) -> list[str]:
        return self.__rowCount
    
    def getRows(self) -> int:
        return self.__rows

    def setPlaceCount(self, countPlace) -> None:
        self.__placeCount = countPlace

    def setRowCount(self, countRow) -> None:
        self.__rowCount = countRow
    
    def __str__(self) -> str:
        return f'Самолет: {self.getPlaceCount()} мест, {self.getRowCount()} рядов, {self.getRows()}'

if __name__ == "__main__":
    print(jet := Jet(10, 6))
