
from dotenv import load_dotenv
import streamlit as st
from time import sleep
from datasource import get_data
load_dotenv()

placeholder = st.empty()
with placeholder:
    with st.spinner('下載資料中...'):
        get_data()

    st.success("下載完成",icon=":material/favorite:")
    sleep(3)


placeholder.empty()
    