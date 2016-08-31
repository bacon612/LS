hash1 =  { "juice": ["apple", "grape", "orange"] , "milk": ["cow", "goat", "almond"] }

hash2 =  { "water": ["sparkling", "distilled", "tap"] }

hash1.merge!(hash2)


puts hash1

hash3 =  { "juice": ["apple", "grape", "orange"] , "milk": ["cow", "goat", "almond"] }

hash4 =  { "water": ["sparkling", "distilled", "tap"] }

hash3.merge (hash4)


puts hash3