FROM ubuntu:22.04
# выбор рабочей директории
WORKDIR /srv/GB_Python_Django/server/
# копирование из рабочей директории в контейнер
COPY . .
# обновление
RUN apt update && apt install apt-transport-https python3 python3-django -y
# Устанавливает все библиотеки, указаггые в requirements.txt
RUN pip install -r requirements.txt
# установка нужных прог
#RUN apt install python3, python3-django -y
# очистка кэша
RUN apt clean 
