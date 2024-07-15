mails = """
Rania KARAM - rania.karam17@hotmail.com
    Imane Hajji - imanehajji.pro@gmail.com
    Maïssa EL MAJDOUBI - wesding3@gmail.com
    Lyna EL MAJDOUBI - sana.elmajdoubi@gmail.com
    Jolene EA - eajolene@gmail.com
    Ema Blanchard - jamila.blanchard@sfr.fr
    Amina Aidi - aminafatnaaidi@gmail.com
"""

L = mails.split("\n")

for infos in L:
    temp = infos.split(" - ")
    if len(temp) > 1:
        print(temp[1].strip())
