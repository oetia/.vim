import requests
import sys

args = sys.argv[1:]

if len(args) == 1:
    text_to_translate = args[0]
    try:
        response = requests.get(f"https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=en&hl=zh-CN&dt=t&dt=bd&dj=1&source=icon&tk=262363.262363&q={text_to_translate}")
        response.raise_for_status()
        jsonResponse = response.json()
        translation = jsonResponse["sentences"][0]["trans"]
        print(translation)
    except requests.exceptions.HttpError as http_error:
        print(f"HTTP Error: {http_error}")
    except Error as e:
        print(f"Other Error: {e}")
        

"""
"""
