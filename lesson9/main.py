
from dotenv import load_dotenv
import streamlit as st
from pprint import pprint
import tools
load_dotenv()


@st.dialog("目前發生問題,請稍後再試")
def alert():
        st.write('連線有問題')
        st.stop()

with st.spinner('下載資料中...'):
        youbikes:list[dict] = tools.get_data()
        tools.save_to_database(data=youbikes)
        
if youbikes is None:
    alert()
st.write(youbikes)



    



    