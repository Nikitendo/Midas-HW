!INQUIRE/KEYWORD pp/r/1/1 "Give a name:"
DEFINE/PARAMETER p1 + N "Введите a: "
DEFINE/PARAMETER p2 + N "Введите b: "
DEFINE/PARAMETER p3 + N "Введите c: "
DEFINE/MAXPAR 3

DEFINE/LOCAL a/r/1/1 {p1}
DEFINE/LOCAL b/r/1/1 {p2}
DEFINE/LOCAL c/r/1/1 {p3}
DEFINE/LOCAL D/r/1/1


WRITE/KEYWORD x1/r/1/1
WRITE/KEYWORD x2/r/1/1

D = b*b - 4*a*c

IF D .LT. 0 THEN
    WRITE/OUT "Нет действительных корней"
ELSE
    x1 = (-b + M$SQRT({D})) / (2*a)
    x2 = (-b - M$SQRT({D})) / (2*a)
    WRITE/OUT x1 = {x1}, x2 = {x2}
ENDIF