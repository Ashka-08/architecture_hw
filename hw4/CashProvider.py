class CashProvider:
    __COUNTDIGITSCADR = 16

    def __init__(self, card: int, isAutorization: bool) -> None:
        if not isAutorization:
            raise Exception('Пожалуйста, авторизуйтесь')
        else:
            self.__isAutorization = isAutorization
        if self.__checkSizeCard(card):
            self.__card = card
    
    def buy(self, price: int) -> bool:
        pass

    def autorization(self, Customer) -> bool:
        pass

    def getCard(self) -> str:
        if self.__isAutorization:
            return f'Номер карты *{str(self.__card)[12::]}'
        else:
            raise Exception('Пожалуйста, авторизуйтесь')
    
    def setCard(self, card: int) -> None:
        if not self.__isAutorization:
            raise Exception('Пожалуйста, авторизуйтесь')
        if self.__checkSizeCard(card):
            self.__card = card
    
    def __checkSizeCard(self, card: int) -> bool:
        strCard = str(card)
        if len(strCard) == self.__COUNTDIGITSCADR:
            return True
        else:
            raise Exception('Номер карты должен состоять из 16 цифр')


if __name__ == "__main__":
    cash = CashProvider(1234567891123456, True)
    print(cash.getCard())
    cash.setCard(1232314525734879)
    print(cash.getCard())
