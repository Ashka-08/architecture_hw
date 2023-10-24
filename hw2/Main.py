from random import choice
from GoldGenerator import GoldGenerator
from GemGenerator import GemGenerator
from RubyGenerator import RubyGenerator

if __name__ == '__main__':

    fabric_list = [GoldGenerator(), GemGenerator(), RubyGenerator()]
    for i in range(20):
        rnd = choice(fabric_list).create_item().open()