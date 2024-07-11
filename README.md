# Flask Docker CI Project

Este proyecto es una aplicación básica de Flask que se ejecuta dentro de un contenedor Docker. Además, utiliza GitHub Actions para la integración continua.

## Requisitos

Asegúrate de tener instalados los siguientes requisitos:

- Docker
- Git
- Python
- Flask

## Estructura del Proyecto

```plaintext
.
├── .github
│   └── workflows
│       └── ci.yml
├── scripts
│   └── devserver.sh
│   └── ec2_user_data.sh
├── src
│   └── app.py
│   └── index.html
├── tests
│   └── test_app.py
├── .gitignore
├── Dockerfile
├── README.md
└── requirements.txt
```

## Pasos para ejecutar el Proyecto con Docker
1. git clone https://github.com/Luis-Corbi/docker-python.git
2. cd docker-python
3. docker build -t my-flask-app .
4. docker run -d -p 5000:5000 my-flask-app

## Pasos para ejecutar el Proyecto sin Docker
1. git clone https://github.com/Luis-Corbi/docker-python.git
2. cd docker-python
3. python3 -m venv venv
4. source venv/bin/activate  ``` En Windows usar `venv\Scripts\activate` ```
5. pip install -r requirements.txt
6. python app.py