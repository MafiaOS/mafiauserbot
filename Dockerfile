FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/MafiaOS/mafiauserbot.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["bash","./MafiaOS/start.sh"]
