import requests


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