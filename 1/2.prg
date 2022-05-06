!Пример @@ 2.prg -3 -10 16 0.5 24
ECHO/OFF
DEFINE/PARAMETER p1 + NUMBER "Введите b: "
DEFINE/PARAMETER p2 + NUMBER "Введите c: "
DEFINE/PARAMETER p3 + NUMBER "Введите начальное a: "
DEFINE/PARAMETER p4 + NUMBER "Введите шаг: "
DEFINE/PARAMETER p5 + NUMBER "Введите конечное a: "
DEFINE/MAXPAR 5

DEFINE/LOCAL b/r/1/1 {p1}
DEFINE/LOCAL c/r/1/1 {p2}
DEFINE/LOCAL a1/r/1/1 {p3}
DEFINE/LOCAL an/r/1/1 {p5}
DEFINE/LOCAL da/r/1/1 {p4}

DEFINE/LOCAL a/r/1/1
DEFINE/LOCAL iter/i/1/1 
DEFINE/LOCAL iter2/i/1/1 
DEFINE/LOCAL n/i/1/1 
DEFINE/LOCAL n2/i/1/1 

iter = M$NINT(({an} - {a1}) / {da})
iter2 = {iter} + 1
WRITE/KEYWORD x11/r/1/{iter2}
WRITE/KEYWORD x21/r/1/{iter2}

DO n = 0 {iter} 1
    a = {a1} + {da}*{n}
    @@ 1.prg {a} {b} {c}
    n2 = {n} + 1
    x11({n2}) = x1
    x21({n2}) = x2
ENDDO