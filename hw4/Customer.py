from Ticket import *
from CashProvider import *
from datetime import date

class Customer:

    def __init__(self, id: int, tickets: list[Ticket], cash: CashProvider) -> None:
        self.__id = id
        self.__tickets = tickets
        self.__cash = cash
    
    def buyTicket(self, Ticket) -> bool:
        pass

    def searchTicket(self, date: date) -> list[Ticket]:
        pass

    def getId(self) -> int:
        return self.__id

    def getTickets(self) -> list[Ticket]:
        pass

    def getCash(self) -> CashProvider:
        pass

    def __repr__(self) -> str:
        return f'Customer({self.getId()}, {self.getTickets()}, {self.getCash()})'


if __name__ == "__main__":
    cash = CashProvider(1234567891123456, True)
    customer = Customer(1, None, cash)
    print(customer.getId())
    print(customer)
