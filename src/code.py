import requests

def http_request(a):
    try:
        r = requests.get('http://127.0.0.1:808/')
        return r.status_code

    except Exception as e:
        print("----------")
        print("Error !!!!!")
        print("----------")
        print(e)