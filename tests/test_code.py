from src import code

def test_http_request():
    result = code.http_request(999)
    assert result == 200

