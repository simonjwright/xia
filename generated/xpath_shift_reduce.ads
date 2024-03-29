package Xpath_Shift_Reduce is

    type Small_Integer is range -32_000 .. 32_000;

    type Shift_Reduce_Entry is record
        T   : Small_Integer;
        Act : Small_Integer;
    end record;
    pragma Pack(Shift_Reduce_Entry);

    subtype Row is Integer range -1 .. Integer'Last;

  --pragma suppress(index_check);

    type Shift_Reduce_Array is array (Row  range <>) of Shift_Reduce_Entry;

    Shift_Reduce_Matrix : constant Shift_Reduce_Array :=
        ( (-1,-1) -- Dummy Entry

-- state  0
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  1
,(-1,-50)
-- state  2
,( 30, 98),(-1,-109)
-- state  3
,( 33, 97)
,(-1,-130)
-- state  4
,( 11, 109),( 12, 108),(-1,-132)

-- state  5
,( 7, 114),( 8, 112),( 9, 115),( 10, 113)
,(-1,-134)
-- state  6
,( 23, 12),( 24, 120),(-1,-137)

-- state  7
,( 25, 101),( 31, 99),( 32, 100),(-1,-142)

-- state  8
,(-1,-145)
-- state  9
,( 13, 126),(-1,-149)
-- state  10
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  11
,(-1,-122)

-- state  12
,(-1,-22)
-- state  13
,(-1,-124)
-- state  14
,( 19, 54),( 20, 29)
,( 27, 131),(-1,-125)
-- state  15
,( 19, 54),( 20, 29)
,(-1,-51)
-- state  16
,(-1,-52)
-- state  17
,(-1,-128)
-- state  18
,(-1,-56)

-- state  19
,(-1,-58)
-- state  20
,( 2, 96),( 16, 72),( 21, 53)
,( 22, 52),( 25, 101),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-53)

-- state  21
,(-1,-55)
-- state  22
,(-1,-110)
-- state  23
,( 2, 96),( 3, 47)
,( 4, 46),( 5, 44),( 6, 45),( 14, 43)
,( 16, 72),( 19, 54),( 20, 29),( 21, 53)
,( 22, 52),( 23, 12),( 25, 101),( 29, 32)
,( 30, 98),( 31, 99),( 32, 100),( 33, 97)
,( 34, 104),( 35, 95),( 36, 103),( 37, 102)
,( 38, 90),( 39, 89),( 40, 88),( 41, 87)
,( 42, 86),( 43, 85),( 44, 84),( 45, 83)
,( 46, 82),( 47, 81),( 48, 80),( 49, 79)
,( 50, 78),(-1,-6000)
-- state  24
,(-1,-112)
-- state  25
,(-1,-113)

-- state  26
,(-1,-114)
-- state  27
,(-1,-61)
-- state  28
,(-1,-60)
-- state  29
,(-1,-19)

-- state  30
,( 2, 96),( 16, 72),( 21, 53),( 22, 52)
,( 25, 101),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  31
,( 2, 96)
,( 30, 98),( 31, 99),( 32, 100),( 33, 97)
,( 34, 104),( 35, 95),( 36, 103),( 37, 102)
,( 38, 90),( 39, 89),( 40, 88),( 41, 87)
,( 42, 86),( 43, 85),( 44, 84),( 45, 83)
,( 46, 82),( 47, 81),( 48, 80),( 49, 79)
,( 50, 78),(-1,-6000)
-- state  32
,(-1,-28)
-- state  33
,(-1,-153)

-- state  34
,(-1,-154)
-- state  35
,(-1,-151)
-- state  36
,(-1,-152)
-- state  37
,( 29, 32)
,(-1,-6000)
-- state  38
,( 2, 96),( 25, 101),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  39
,(-1,-64)
-- state  40
,(-1,-107)
-- state  41
,(-1,-108)

-- state  42
,(-1,-105)
-- state  43
,(-1,-13)
-- state  44
,(-1,-4)
-- state  45
,(-1,-5)

-- state  46
,(-1,-3)
-- state  47
,(-1,-2)
-- state  48
,( 29,-121),(-1,-92)

-- state  49
,( 17, 149),(-1,-97)
-- state  50
,(-1,-65)
-- state  51
,( 2, 96)
,( 25, 101),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  52
,(-1,-21)

-- state  53
,(-1,-20)
-- state  54
,(-1,-18)
-- state  55
,( 18, 152),(-1,-94)

-- state  56
,(-1,-71)
-- state  57
,(-1,-72)
-- state  58
,(-1,-73)
-- state  59
,(-1,-74)

-- state  60
,(-1,-75)
-- state  61
,(-1,-76)
-- state  62
,(-1,-77)
-- state  63
,(-1,-78)

-- state  64
,(-1,-79)
-- state  65
,(-1,-80)
-- state  66
,(-1,-81)
-- state  67
,(-1,-82)

-- state  68
,(-1,-83)
-- state  69
,(-1,-84)
-- state  70
,( 29, 32),(-1,-98)

-- state  71
,( 29, 32),(-1,-89)
-- state  72
,(-1,-15)
-- state  73
,(-1,-96)

-- state  74
,(-1,-99)
-- state  75
,(-1,-100)
-- state  76
,(-1,-101)
-- state  77
,(-1,-102)

-- state  78
,(-1,-49)
-- state  79
,(-1,-48)
-- state  80
,(-1,-47)
-- state  81
,(-1,-46)

-- state  82
,(-1,-45)
-- state  83
,(-1,-44)
-- state  84
,(-1,-43)
-- state  85
,(-1,-42)

-- state  86
,(-1,-41)
-- state  87
,(-1,-40)
-- state  88
,(-1,-39)
-- state  89
,(-1,-38)

-- state  90
,(-1,-37)
-- state  91
,(-1,-91)
-- state  92
,(-1,-87)
-- state  93
,(-1,-88)

-- state  94
,(-1,-90)
-- state  95
,(-1,-34)
-- state  96
,(-1,-1)
-- state  97
,(-1,-32)

-- state  98
,(-1,-29)
-- state  99
,(-1,-30)
-- state  100
,(-1,-31)
-- state  101
,(-1,-24)

-- state  102
,(-1,-36)
-- state  103
,(-1,-35)
-- state  104
,(-1,-33)
-- state  105
,( 0,-6001)
,(-1,-6000)
-- state  106
,( 2, 96),( 3, 47),( 4, 46)
,( 5, 44),( 6, 45),( 14, 43),( 16, 72)
,( 19, 54),( 20, 29),( 21, 53),( 22, 52)
,( 23, 12),( 25, 101),( 29, 32),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  107
,( 2, 96),( 3, 47),( 4, 46)
,( 5, 44),( 6, 45),( 14, 43),( 16, 72)
,( 19, 54),( 20, 29),( 21, 53),( 22, 52)
,( 23, 12),( 25, 101),( 29, 32),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  108
,(-1,-11)
-- state  109
,(-1,-10)
-- state  110
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  111
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  112
,(-1,-7)

-- state  113
,(-1,-9)
-- state  114
,(-1,-6)
-- state  115
,(-1,-8)
-- state  116
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  117
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  118
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  119
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  120
,(-1,-23)

-- state  121
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  122
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  123
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  124
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  125
,( 2, 96),( 3, 47),( 4, 46),( 5, 44)
,( 6, 45),( 14, 43),( 16, 72),( 19, 54)
,( 20, 29),( 21, 53),( 22, 52),( 23, 12)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  126
,(-1,-12)
-- state  127
,( 2, 96),( 3, 47),( 4, 46)
,( 5, 44),( 6, 45),( 14, 43),( 16, 72)
,( 19, 54),( 20, 29),( 21, 53),( 22, 52)
,( 25, 101),( 29, 32),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  128
,(-1,-150)
-- state  129
,( 2, 96),( 3, 47),( 4, 46)
,( 5, 44),( 6, 45),( 14, 43),( 16, 72)
,( 19, 54),( 20, 29),( 21, 53),( 22, 52)
,( 23, 12),( 25, 101),( 29, 32),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  130
,(-1,-68)
-- state  131
,(-1,-26)
-- state  132
,( 2, 96)
,( 16, 72),( 21, 53),( 22, 52),( 25, 101)
,( 30, 98),( 31, 99),( 32, 100),( 33, 97)
,( 34, 104),( 35, 95),( 36, 103),( 37, 102)
,( 38, 90),( 39, 89),( 40, 88),( 41, 87)
,( 42, 86),( 43, 85),( 44, 84),( 45, 83)
,( 46, 82),( 47, 81),( 48, 80),( 49, 79)
,( 50, 78),(-1,-6000)
-- state  133
,( 2, 96),( 16, 72)
,( 21, 53),( 22, 52),( 25, 101),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  134
,(-1,-129)
-- state  135
,( 2, 96),( 16, 72)
,( 21, 53),( 22, 52),( 25, 101),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-6000)
-- state  136
,( 2, 96),( 16, 72),( 21, 53)
,( 22, 52),( 25, 101),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  137
,( 19, 54),( 20, 29),(-1,-54)
-- state  138
,(-1,-92)

-- state  139
,( 28, 177),(-1,-6000)
-- state  140
,( 27, 131),(-1,-59)

-- state  141
,( 19, 54),( 20, 29),(-1,-104)
-- state  142
,( 18, 152)
,(-1,-94)
-- state  143
,(-1,-97)
-- state  144
,(-1,-98)
-- state  145
,(-1,-89)

-- state  146
,(-1,-115)
-- state  147
,( 2, 96),( 3, 47),( 4, 46)
,( 5, 44),( 6, 45),( 14, 43),( 16, 72)
,( 19, 54),( 20, 29),( 21, 53),( 22, 52)
,( 23, 12),( 25, 101),( 29, 32),( 30, 98)
,( 31, 99),( 32, 100),( 33, 97),( 34, 104)
,( 35, 95),( 36, 103),( 37, 102),( 38, 90)
,( 39, 89),( 40, 88),( 41, 87),( 42, 86)
,( 43, 85),( 44, 84),( 45, 83),( 46, 82)
,( 47, 81),( 48, 80),( 49, 79),( 50, 78)
,(-1,-117)
-- state  148
,(-1,-63)
-- state  149
,(-1,-16)
-- state  150
,(-1,-70)

-- state  151
,(-1,-66)
-- state  152
,(-1,-17)
-- state  153
,( 2, 96),( 25, 101)
,( 30, 98),( 31, 99),( 32, 100),( 33, 97)
,( 34, 104),( 35, 95),( 36, 103),( 37, 102)
,( 38, 90),( 39, 89),( 40, 88),( 41, 87)
,( 42, 86),( 43, 85),( 44, 84),( 45, 83)
,( 46, 82),( 47, 81),( 48, 80),( 49, 79)
,( 50, 78),(-1,-6000)
-- state  154
,( 28, 177),(-1,-6000)

-- state  155
,( 5, 44),( 6, 45),(-1,-6000)
-- state  156
,(-1,-6000)

-- state  157
,( 33, 97),(-1,-131)
-- state  158
,( 11, 109),( 12, 108)
,(-1,-133)
-- state  159
,( 7, 114),( 8, 112),( 9, 115)
,( 10, 113),(-1,-135)
-- state  160
,( 7, 114),( 8, 112)
,( 9, 115),( 10, 113),(-1,-136)
-- state  161
,( 23, 12)
,( 24, 120),(-1,-138)
-- state  162
,( 23, 12),( 24, 120)
,(-1,-139)
-- state  163
,( 23, 12),( 24, 120),(-1,-140)

-- state  164
,( 23, 12),( 24, 120),(-1,-141)
-- state  165
,( 25, 101)
,( 31, 99),( 32, 100),(-1,-143)
-- state  166
,( 25, 101)
,( 31, 99),( 32, 100),(-1,-144)
-- state  167
,(-1,-146)

-- state  168
,(-1,-147)
-- state  169
,(-1,-148)
-- state  170
,(-1,-123)
-- state  171
,(-1,-103)

-- state  172
,( 26, 189),(-1,-6000)
-- state  173
,( 19, 54),( 20, 29)
,(-1,-126)
-- state  174
,( 19, 54),( 20, 29),(-1,-127)

-- state  175
,(-1,-57)
-- state  176
,(-1,-106)
-- state  177
,(-1,-27)
-- state  178
,(-1,-111)

-- state  179
,(-1,-62)
-- state  180
,( 2, 96),( 30, 98),( 31, 99)
,( 32, 100),( 33, 97),( 34, 104),( 35, 95)
,( 36, 103),( 37, 102),( 38, 90),( 39, 89)
,( 40, 88),( 41, 87),( 42, 86),( 43, 85)
,( 44, 84),( 45, 83),( 46, 82),( 47, 81)
,( 48, 80),( 49, 79),( 50, 78),(-1,-6000)

-- state  181
,(-1,-118)
-- state  182
,( 15, 191),( 28, 177),(-1,-6000)

-- state  183
,(-1,-120)
-- state  184
,(-1,-93)
-- state  185
,(-1,-95)
-- state  186
,(-1,-85)

-- state  187
,( 28, 177),(-1,-6000)
-- state  188
,(-1,-69)
-- state  189
,(-1,-25)

-- state  190
,(-1,-67)
-- state  191
,(-1,-14)
-- state  192
,(-1,-116)
-- state  193
,( 2, 96)
,( 3, 47),( 4, 46),( 5, 44),( 6, 45)
,( 14, 43),( 16, 72),( 19, 54),( 20, 29)
,( 21, 53),( 22, 52),( 23, 12),( 25, 101)
,( 29, 32),( 30, 98),( 31, 99),( 32, 100)
,( 33, 97),( 34, 104),( 35, 95),( 36, 103)
,( 37, 102),( 38, 90),( 39, 89),( 40, 88)
,( 41, 87),( 42, 86),( 43, 85),( 44, 84)
,( 45, 83),( 46, 82),( 47, 81),( 48, 80)
,( 49, 79),( 50, 78),(-1,-6000)
-- state  194
,(-1,-86)

-- state  195
,(-1,-119)
);
--  The offset vector
SHIFT_REDUCE_OFFSET : array (0.. 195) of Integer :=
( 0,
 36, 37, 39, 41, 44, 49, 52, 56, 57, 59,
 95, 96, 97, 98, 102, 105, 106, 107, 108, 109,
 136, 137, 138, 174, 175, 176, 177, 178, 179, 180,
 207, 230, 231, 232, 233, 234, 235, 237, 261, 262,
 263, 264, 265, 266, 267, 268, 269, 270, 272, 274,
 275, 299, 300, 301, 302, 304, 305, 306, 307, 308,
 309, 310, 311, 312, 313, 314, 315, 316, 317, 318,
 320, 322, 323, 324, 325, 326, 327, 328, 329, 330,
 331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
 341, 342, 343, 344, 345, 346, 347, 348, 349, 350,
 351, 352, 353, 354, 355, 357, 393, 429, 430, 431,
 467, 503, 504, 505, 506, 507, 543, 579, 615, 651,
 652, 688, 724, 760, 796, 832, 833, 868, 869, 905,
 906, 907, 934, 961, 962, 989, 1016, 1019, 1020, 1022,
 1024, 1027, 1029, 1030, 1031, 1032, 1033, 1069, 1070, 1071,
 1072, 1073, 1074, 1098, 1100, 1103, 1104, 1106, 1109, 1114,
 1119, 1122, 1125, 1128, 1131, 1135, 1139, 1140, 1141, 1142,
 1143, 1144, 1146, 1149, 1152, 1153, 1154, 1155, 1156, 1157,
 1180, 1181, 1184, 1185, 1186, 1187, 1188, 1190, 1191, 1192,
 1193, 1194, 1195, 1231, 1232);
end Xpath_Shift_Reduce;
