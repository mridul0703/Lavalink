# 🎵 Lavalink Audio Backend Setup for Discord Bots

This repository contains the configuration files and setup required to run a **Lavalink audio server**, which can be used as a backend for Discord music bots.

## 📆 What's Included

- `lavalink.jar` – The Lavalink server JAR file.
- `application.yml` – Configuration file to set server settings and enabled audio sources.
- `Dockerfile` – (Optional) Docker setup for running Lavalink in a containerized environment.

---

## ⚙️ How It Works

**Lavalink** is a high-performance audio streaming server written in Java. Your Discord music bot connects to Lavalink to handle audio playback such as:

- Playing tracks from YouTube, SoundCloud, etc.
- Pausing, resuming, skipping tracks
- Handling queues, looping, and more

---

## 🚀 Getting Started

### 🔧 Requirements

- Java 17 or higher
- Your bot must support Lavalink (e.g., [Erela.js](https://www.npmjs.com/package/erela.js), [Shoukaku](https://www.npmjs.com/package/shoukaku), etc.)

---

### 🖥️ Running Lavalink

#### Option 1: Run via Java

```bash
java -jar Lavalink.jar
```

Make sure `application.yml` is in the same directory.

#### Option 2: Run via Docker

```bash
docker build -t lavalink .
docker run -p 2333:2333 lavalink
```

> Ensure your bot connects to `localhost:2333` (or your server's IP) with the password specified in `application.yml`.

---

## 🛠 application.yml Overview

```yaml
lavalink:
  server:
    password: 07@Mridul
    sources:
      youtube: true
      soundcloud: true
      twitch: true
      local: false
```

Customize your server settings and enabled audio sources here.

---

## 🧐 Note

If you're using a library like **DisTube**, you **do not need Lavalink**, as DisTube streams audio natively using Discord.js.

For larger bots or production environments, Lavalink offers **better performance, control, and scalability**.

---

## 📄 License

This project is for educational and personal use only. Lavalink is developed by [Frederikam](https://github.com/freyacodes/Lavalink).

---

## 👤 Author

**Your Name**  
Feel free to contribute or fork this project!

