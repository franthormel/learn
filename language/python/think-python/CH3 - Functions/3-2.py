def do_twice(f,v):
    f(v)
    f(v)

def do_four(f, v):
    do_twice(f, v)
    do_twice(f, v)
    
def print_spam():
    print('spam')

def print_twice(bruce):
    print(bruce)
    print(bruce)

do_twice(print_twice, 'spam')