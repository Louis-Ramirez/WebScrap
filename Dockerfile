#Dockerfile, Image, Container

#A Dockerfile is a blue print for building images.

#An Image is a template for running containers.

#Container extend the actual running process where we have the actual packaged project.. 

FROM python:3.8

ADD main.py .

RUN pip install requests beautifulsoup4

CMD ["python" ,"./main.py"]


docker build -t python-imdb . #builds images "." indicates path

docker run -t -i python-imdb # -i because its interactive mode and your code prompts user for input. -t because it gives you a pseudo terminal. 

