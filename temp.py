import pandas as pd
import os

csv_path = 'C:/Users/renu/Downloads'


df = pd.read_csv(csv_path + '/books_processed.csv')

titles = df.iloc[:1500, 2]

from book.models import MyBookModel
from tqdm import tqdm

for value in tqdm(titles):
    p = MyBookModel(title = value)
    p.save()

print('successfully imported')
