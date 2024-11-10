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

def user_select():
    print('使用者選擇了')
    print(st.session_state.stocks)


st.title('世界大盤分析')
with st.sidebar:
    default_country = '台灣'
    st.title('請選擇股票市場:')
    input_dict = dict(all_country)
    st.multiselect("請選擇",input_dict.values(),
                    default=default_country,
                    placeholder="請選擇市場",
                    label_visibility='hidden',
                    key='stocks',
                    on_change=user_select)
    st.write(default_country)
    