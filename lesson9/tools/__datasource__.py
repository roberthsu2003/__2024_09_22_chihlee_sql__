import requests
import psycopg2
import os
from dotenv import load_dotenv


#常數
PI = 3.1415926

#自訂的class
class CustomClass:
    pass

import time
#自訂的function
def get_data()->list | None:
    url = 'https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json' 
    try:
        response = requests.get(url)
        response.raise_for_status()
    except:
        print("出錯了")
        return None
    else:
        return response.json()
    
def save_to_database(data:list[dict])->None:
    print(data)
    #建立資料表
    load_dotenv()
    conn = psycopg2.connect(host=os.environ['POSTGRE_HOST'],database=os.environ['POSTGRE_DATABASE'],user=os.environ['POSTGRE_USER'],password=os.environ['POSTGRE_PASSWORD'])
    with conn:
        with conn.cursor() as cursor:
            sql = '''
            CREATE TABLE IF NOT EXISTS 站點資訊(
            站點編號 VARCHAR(10),
            站點名稱 VARCHAR(30) NOT NULL,
            行政區 VARCHAR(10) NOT NULL,
            站點地址 VARCHAR(50),
            lat NUMERIC(15,11),
            lng NUMERIC(15,11),
            PRIMARY KEY(站點編號)
            );

            CREATE TABLE IF NOT EXISTS youbike(
            日期 TIMESTAMP,
            編號 VARCHAR(10),
            總車輛 INTEGER,
            可借 INTEGER,
            可還 INTEGER,
            活動 BOOLEAN,
            PRIMARY KEY(日期,編號),
            FOREIGN KEY(編號) REFERENCES 站點資訊(站點編號) 
            ON DELETE CASCADE
            ON UPDATE CASCADE
            );
            '''
            cursor.execute(sql)
            
    conn.close()