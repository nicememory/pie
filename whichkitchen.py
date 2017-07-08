#! /usr/bin/python
# -*- coding: UTF-8 -*-

import random

kitchens=["十里面香", "亚洲风情","一麻一辣","岭南美食","度美食","鱼米之乡","东北老厨","日本料理","齐鲁人家","度美食一","度美食二","度美食三","北菜百味","铁锅炖菜","粤来粤好","即食趣","百納飘香","一面知缘","刘一锅蜀香坊","欧米奇西餐","关爱餐厅","清真餐厅"]

s = random.choice(kitchens)

d = kitchens.index(s)

print  s + ' ' + str(d) + '/' + str(len(kitchens))
