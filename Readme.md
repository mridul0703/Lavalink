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

The bot communicates with Lavalink over WebSockets using a specific protocol supported by various client libraries (e.g., `erela.js`, `shoukaku`, or `lavalink.js`).

---

## ❓ Why Use Lavalink?

Using Lavalink provides several advantages over native Discord audio streaming:

- ✨ **Performance**: Lavalink offloads audio processing to a separate server, reducing strain on your main bot process.
- 🔄 **Stability**: Audio playback is smoother and less prone to lag or stutter.
- ⚡ **Scalability**: Supports multiple bots and thousands of concurrent guilds with minimal performance drop.
- 🚀 **Multi-source Streaming**: Supports YouTube, SoundCloud, Twitch, HTTP, and more.
- 🔧 **Feature-Rich**: Queue management, filters, seek, volume control, loop modes, and more.

---

## 📅 Technology Used

- **Java 17**: Lavalink is written in Java and requires Java 17+ to run.
- **Spring Boot**: Used to power the backend server functionality.
- **WebSocket**: For communication between your bot and Lavalink.
- **Docker (optional)**: For containerized deployments.
- **Audio Sources**: Lavalink supports a wide range of sources like YouTube, SoundCloud, Bandcamp, Vimeo, Twitch, HTTP streams, etc.

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
    password: ${password}
    sources:
      youtube: true
      soundcloud: true
      twitch: true
      local: false
```

Customize your server settings and enabled audio sources here.

---

## 📙 How to Use Lavalink with Your Bot

1. **Set up Lavalink** using the instructions above (via Java or Docker).
2. **Install a Lavalink client** in your bot code (e.g., `erela.js` for Node.js).
3. **Connect to the Lavalink server** using the password and port from your `application.yml`.
4. **Send audio playback commands** to Lavalink (play, pause, stop, volume, seek, etc.).
5. **Handle events** like `trackStart`, `trackEnd`, `queueEnd`, and update your bot UI or log messages accordingly.

---

## 🧐 Note

If you're using a library like **DisTube**, you **do not need Lavalink**, as DisTube streams audio natively using Discord.js.

For larger bots or production environments, Lavalink offers **better performance, control, and scalability**.

---

## 📄 License

This project is for educational and personal use only. Lavalink is developed by [Frederikam](https://github.com/freyacodes/Lavalink).

---

## 👤 Author
  
Feel free to contribute or fork this project!

