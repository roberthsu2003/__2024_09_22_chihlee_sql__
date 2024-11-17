
from dotenv import load_dotenv
import streamlit as st
from pprint import pprint
import tools
load_dotenv()


@st.dialog("目前發生問題,請稍後再試")
def alert():
        st.write('連線有問題')
        st.stop()

@st.cache_data
def get_sarea()->list[str]:
    areas = [tuple1[0] for tuple1 in tools.get_sarea_from_database()]
    return areas

with st.spinner('下載資料中...'):
        #底下註解的為存檔
        #youbikes:list[dict] = tools.get_data()
        #tools.save_to_database(data=youbikes)
        areas = get_sarea()        
        

selected = st.radio(
        "選擇行政區:",
        areas,
        key='sarea',
        horizontal=True   
    )

data = tools.get_info_area(area=selected)
data1 = [{'日期':item[0],'站點':item[1],'總車輛':item[6],'可借':item[7],'可還':item[8],'活動':item[9]}for item in data]
st.dataframe(data1)
        




    



    