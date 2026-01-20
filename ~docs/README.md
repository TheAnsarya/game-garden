# 🌱 Game Garden Development Documentation

This folder contains documentation about the *development* of Game Garden itself.

## 📁 Structure

```
~docs/
├── README.md                           # This file
├── game-garden-manual-prompts-log.txt  # User's manual prompt log (DO NOT EDIT)
├── chat-logs/                          # AI conversation logs
│   └── YYYY-MM-DD-chat-NN.md
└── session-logs/                       # Session summaries
    └── YYYY-MM-DD-session-NN.md
```

## 📝 Log File Formats

### Chat Logs
Located in `chat-logs/`, these capture AI conversation transcripts.

**Filename format:** `YYYY-MM-DD-chat-NN.md`
- `YYYY-MM-DD` = Date
- `NN` = Sequential number for that day (01, 02, etc.)

### Session Logs
Located in `session-logs/`, these summarize work completed in each session.

**Filename format:** `YYYY-MM-DD-session-NN.md`

## ⚠️ Important Notes

- **NEVER edit** `game-garden-manual-prompts-log.txt` - this is maintained by the user
- Chat logs are for reference/context in future sessions
- Session logs track progress and decisions
