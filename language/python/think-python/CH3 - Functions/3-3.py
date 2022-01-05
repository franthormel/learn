def draw_cross():
    print('+', end='')
    print(' - ' * 4, end='')


def draw_line():
    print('|', end='')
    print(' ' * 12, end='')    


def draw_cross_threes():
    draw_cross()
    draw_cross()
    print('+')


def draw_cross_fours():
    draw_cross()
    draw_cross()
    draw_cross()
    print('+')


def draw_line_threes():
    draw_line()
    draw_line()
    print('|')


def draw_line_fours():
    draw_line()
    draw_line()
    draw_line()
    print('|')


def draw_grid_threes():
    # 1
    draw_cross_threes()
    draw_line_threes()
    draw_line_threes()
    draw_line_threes()
    draw_line_threes()

    # 2
    draw_cross_threes()
    draw_line_threes()
    draw_line_threes()
    draw_line_threes()
    draw_line_threes()

    # 3
    draw_cross_threes()
    print('\n')


def draw_grid_fours():
    # 1
    draw_cross_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()

    # 2
    draw_cross_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()

    # 3
    draw_cross_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()
    draw_line_fours()

    # 4
    draw_cross_fours()
    print('\n')


draw_grid_fours()