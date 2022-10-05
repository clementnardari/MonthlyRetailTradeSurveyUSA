import yaml
import mysql.connector
import sqlalchemy as alchemy
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

engine = alchemy.create_engine('mysql+mysqlconnector://root:3RnlvxI1TG!@localhost:3306/mrts', echo=False)

def add_new_year(Year):
    year_MRTS=pd.read_excel('mrtssales92-present.xls',sheet_name=str(Year),skiprows=4,nrows=66,usecols='B:O',index_col=0)
    year_MRTS.drop(index='NOT ADJUSTED',axis=0,inplace=True)
    year_MRTS.index = year_MRTS.index.str.replace(","," -")
    year_MRTS.index = year_MRTS.index.str.replace("and","-")
    year_MRTS.index = year_MRTS.index.str.replace("(","")
    year_MRTS.index = year_MRTS.index.str.replace(")","")
    year_MRTS.index = year_MRTS.index.str.replace("'s","")
    year_MRTS.index = year_MRTS.index.str.replace("Retail sales - food services excl motor vehicle - parts - gasoline stations","Retail sales - food services excl mv - p - gs")
    year_MRTS=year_MRTS.transpose()
    year_MRTS.drop(index='TOTAL',axis=0,inplace=True)
    year_MRTS.index = pd.to_datetime(year_MRTS.index)
    year_MRTS=year_MRTS.replace({'(S)' : 0, '(NA)' : 0})
    year_MRTS=year_MRTS.astype('int64')
    year_MRTS['Date']=year_MRTS.index
    first = year_MRTS.pop('Date')   
    year_MRTS.insert(0, 'Date', first)
    return year_MRTS

for Year in np.arange(1992,2021,1):
    print(Year)
    year_MRTS=add_new_year(Year)
    year_MRTS.to_sql(name='mrts_table', con=engine,index=False, if_exists='append')

engine.dispose()
