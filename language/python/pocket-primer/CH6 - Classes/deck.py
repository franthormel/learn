# This program demonstrates the basic implementation of classes in Python

class card:
    def __init__(self, face, suit):
        self.__face = face
        self.__suit = suit

    def face(self):
        return self.__face

    def suit(self):
        return self.__suit

    def value(self):
        val = self.__face

        # Check if it's K, Q, J or A
        if str.isalpha(val):
            if val == "K":
                val = 13
            elif val == "Q":
                val = 12
            elif val == "J":
                val = 11
            elif val == "A":
                val = 1
            else:
                val = -1
        else:
            val = int(val)

        return val

    def facevalue(self):
        return str(self.__face) + " " + str(self.__suit)

    def compare(self, other):
        if other is card:
            return self.value() > other.value()