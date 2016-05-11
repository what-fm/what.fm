# What.FM, a last.fm with blackjack and hookers

Last.fm sucks, so we're building a new, better one.

### Project goals: Make last.fm great again

1. Social functions up the wazoo: compare music compatibility between users, events planning, mapping music scenes by geographic regions, whatever we can think of
2. Simple, clean interface: make it appealing to users, but keep it fast and easy to navigate
3. Radio: figure out if it's still possible to have a radio service like old lastfm (serving our own MP3s without relying on external services like spotify and youtube)

### What we need:

1. Backend: Handles API calls from plugin, website and apps, connects to database.
2. Plugin: Proof-of-concept plugin for a single music player (eg. foobar) to send song data to backend.
3. Website: Simple, readable website to display data from the backend.
4. Recommendation algorithm: Something that analyzes users' musical preferences and pulls out artists an user doesn't have on their profile yet.
5. Data import from Last.fm: For migrating users and shit.
6. A better name.
