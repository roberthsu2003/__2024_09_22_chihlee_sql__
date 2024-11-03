import streamlit as st
import psycopg2
from dotenv import load_dotenv
import os
load_dotenv()

conn = psycopg2.connect(host=os.environ['POSTGRE_HOST'],database=os.environ['POSTGRE_DATABASE'],user=os.environ['POSTGRE_USER'],password=os.environ['POSTGRE_PASSWORD'])
with conn:
    with conn.cursor() as cursor:
        sql = '''
        SELECT * FROM 市場
        '''
        cursor.execute(sql)
        all_country = cursor.fetchall()
conn.close()

st.title('世界大盤分析')
with st.sidebar:
    st.title('請選擇股票市場:')
    st.write('## 台灣')
    st.write(all_country)