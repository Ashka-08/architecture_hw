from Ticket import *
from Jet import *


class TicketJet(Ticket, Jet):
    def __init__(self, jet: Jet, placeRow: str, *args, **kwargs) -> None:
        self.__jet = jet
        if placeRow in jet.getRows():
            self.__placeRow = placeRow
        else:
            raise Exception(f'Ряд места должно быть в списке {jet.getRows()}')
        super().__init__(*args, **kwargs)
    
    def getPlaceRow(self) -> str:
        return self.__placeRow
    
    def getJet(self) -> str:
        return self.__jet

    def __str__(self) -> str:
        return f'Билет № {self.getRootNumber()} место {self.getPlace()} ряд {self.getPlaceRow()} \
            \n на рейс {self.getJet()}'
    

if __name__ == "__main__":
    jet = Jet(10, 6)
    print(ticket := TicketJet(jet, 'A', 1, 10, datetime.now()))