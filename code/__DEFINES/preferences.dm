
//Preference toggles
#define SOUND_ADMINHELP	1
#define SOUND_MIDI		2
#define SOUND_AMBIENCE	4
#define SOUND_LOBBY		8
#define MEMBER_PUBLIC	16
#define INTENT_STYLE	32
#define MIDROUND_ANTAG	64
#define SOUND_INSTRUMENTS	128
#define SOUND_SHIP_AMBIENCE 256
#define SOUND_PRAYERS 512
#define ANNOUNCE_LOGIN 1024
#define SOUND_ANNOUNCEMENTS 2048
#define DISABLE_DEATHRATTLE 4096
#define DISABLE_ARRIVALRATTLE 8192

#define TOGGLES_DEFAULT (SOUND_ADMINHELP|SOUND_MIDI|SOUND_AMBIENCE|SOUND_LOBBY|MEMBER_PUBLIC|INTENT_STYLE|MIDROUND_ANTAG|SOUND_INSTRUMENTS|SOUND_SHIP_AMBIENCE|SOUND_PRAYERS|SOUND_ANNOUNCEMENTS)

//Chat toggles
#define CHAT_OOC		1
#define CHAT_DEAD		2
#define CHAT_GHOSTEARS	4
#define CHAT_GHOSTSIGHT	8
#define CHAT_PRAYER		16
#define CHAT_RADIO		32
#define CHAT_PULLR		64
#define CHAT_GHOSTWHISPER 128
#define CHAT_GHOSTPDA	256
#define CHAT_GHOSTRADIO 512
#define CHAT_LANGUAGE 	1024

#define TOGGLES_DEFAULT_CHAT (CHAT_OOC|CHAT_DEAD|CHAT_GHOSTEARS|CHAT_GHOSTSIGHT|CHAT_PRAYER|CHAT_RADIO|CHAT_PULLR|CHAT_GHOSTWHISPER|CHAT_GHOSTPDA|CHAT_GHOSTRADIO|CHAT_LANGUAGE)

#define PARALLAX_INSANE -1 //for show offs
#define PARALLAX_HIGH    0 //default.
#define PARALLAX_MED     1
#define PARALLAX_LOW     2
#define PARALLAX_DISABLE 3 //this option must be the highest number

#define PARALLAX_DELAY_DEFAULT world.tick_lag
#define PARALLAX_DELAY_MED     1
#define PARALLAX_DELAY_LOW     2