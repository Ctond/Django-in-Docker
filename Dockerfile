FROM ubuntu:22.04
# выбор рабочей директории
WORKDIR /srv/GB_Python_Django/server/
# копирование из рабочей директории в докер
COPY . .
# обновление
RUN apt update && apt install apt-transport-https python3 python3-django -y
# установка нужных прог
#RUN apt install python3, python3-django -y
# очистка кэша
RUN apt clean 
# запуск сервера django
CMD python3 manage.py runserver
