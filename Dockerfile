FROM node:15.7.0-stretch-slim
# Dependencies are required to run puppeteer
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y libnss3 libgconf-2-4 gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget net-tools git
RUN git clone https://github.com/pa11y/dashboard.git && cd dashboard && npm i
# this is required because it loads the correct configuration file
ENV NODE_ENV ${NODE_ENV:-production}
COPY production.json /dashboard/config/production.json
WORKDIR /dashboard
CMD PORT=4000 node index.js