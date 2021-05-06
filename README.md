# Flask API

![Python](https://img.shields.io/badge/python-3.8-brightgreen.svg)
![FlaskApi](https://img.shields.io/badge/flaskapi-1.1.2-orange.svg)

A simple flask API that returns *greetings* for a user.

### Running the App Locally

```
docker build -t flask-api .
```

```
docker run -it -p 5000:5000 flask-api
```

**Note:** Swagger/OpenAPI is available at `http://0.0.0.0:5000/flask-api/ui/`.

### Sending a POST request

```
curl -X POST "http://0.0.0.0:5000/flask-api/greetings" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{\"name\":\"Mariah\"}"
```


### References

- [Flask](https://pypi.org/project/Flask/)
