# Koristi Node.js kao osnovni image
FROM node:18-alpine

# Postavi radni direktorijum
WORKDIR /app

# Kopiraj package.json i package-lock.json
COPY package*.json ./

# Instaliraj zavisnosti
RUN npm install

# Kopiraj sve fajlove aplikacije
COPY . .

# Izgradi aplikaciju
RUN npm run build

# Izloži port na kojem aplikacija radi
EXPOSE 3000

# Pokreni aplikaciju
CMD ["npm", "run", "start"]
