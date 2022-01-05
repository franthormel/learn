# Volume of a sphere
radius = 5
pi = 3.14
volume_sphere = (4 / 3) * pi * (radius ** 3)

print(f'Volume of a sphere {volume_sphere}')

# Book price
price = 24.95
discount = .4
shipping_cost_first = 3
shipping_cost_additional = .75
copies = 60

discounted_price = discount * price

first_shipping_cost = discounted_price + shipping_cost_first
succeeding_shipping_costs = (discounted_price + shipping_cost_additional) * copies - 1;

total_cost = first_shipping_cost + succeeding_shipping_costs

print(f'Total book cost plus shipping ${total_cost}')

# Breakfast time
start_hour = 6
start_min = 52

easy_time = (8 * 60 + 15) * 2
tempo_time = (7 * 60 + 12) * 3
total_time_secs = easy_time + tempo_time
total_time_mins = total_time_secs / 60
total_time_hour = total_time_mins / 60

print(f'Running time costed you {total_time_secs} s or {total_time_mins} mins or {total_time_hour} hr')


