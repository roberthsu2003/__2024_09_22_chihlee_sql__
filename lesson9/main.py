
from dotenv import load_dotenv
import streamlit as st
from time import sleep

load_dotenv()
placeholder = st.empty()
with placeholder:
    with st.spinner('下載資料中...'):
        sleep(5)

    st.success("下載完成",icon=":material/favorite:")
    sleep(3)


placeholder.empty()
    