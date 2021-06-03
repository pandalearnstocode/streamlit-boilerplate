import numpy as np
import pandas as pd
df = pd.DataFrame(np.random.randint(0,100,size=(100, 4)), columns=['name','Age','something','more_something'])
df.to_csv("sample_data.csv", index = None)