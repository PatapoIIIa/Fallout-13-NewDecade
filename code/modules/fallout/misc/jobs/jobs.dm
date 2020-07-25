var/const/WASTELAND			=(1<<3)

var/const/GENERAL			=(1<<0)
var/const/NCR_SERGEANT		=(1<<1)
var/const/RANGER			=(1<<2)
var/const/TROOPER			=(1<<3)

var/const/PRIME				=(1<<4)
var/const/LEGDECAN			=(1<<5)
var/const/LEGVEX			=(1<<6)
var/const/LEGCENTURION		=(1<<7)
var/const/LEGLEGAT			=(1<<8)

var/const/SHERIFF			=(1<<9)
var/const/SETTLER			=(1<<10)
var/const/ADVENTURER		=(1<<11)
var/const/RAIDER        	=(1<<12)
var/const/MAYOR				=(1<<13)
var/const/ARROYV			=(1<<14)
var/const/ARROYE			=(1<<15)
var/const/GUNRUNNER			=(1<<16)
var/const/SLAVER        	=(1<<17)
//This jobs using medsci flag, cause me too lazy.

var/const/COLONEL			=(1<<1)
var/const/ENCLAVE_SERGEANT	=(1<<2)
var/const/ENCLAVE_PRIVATE	=(1<<3)
var/const/ENCLAVE_RADIST	=(1<<4)

var/const/MERCENARY			=(1<<5)
var/const/GANGLEAD			=(1<<6)
var/const/GHOUL_MASTER		=(1<<7)
var/const/GHOUL_HAND		=(1<<8)
var/const/GHOUL_PRIEST		=(1<<9)

//engsec

var/const/ELDER				=(1<<1)
var/const/PALADIN			=(1<<2)
var/const/KNIGHT			=(1<<3)
var/const/KNIGHTRADIST		=(1<<6)
var/const/SCRIBER			=(1<<5)


var/const/CITIZEN			=(1<<4)
var/const/TRADER			=(1<<10)




var/const/FOA				=(1<<8)
var/const/AFOLLOWER			=(1<<0)

var/const/FOB				=(1<<9)
var/const/VAULT_OVERSEER	=(1<<0)
var/const/VAULT_RESIDENT	=(1<<1)
var/const/VAULT_SECURITY	=(1<<5)
var/const/VAULT_SCIENCIST	=(1<<6)
var/const/VAULT_ENGINEER	=(1<<7)

var/const/COC				=(1<<12)
var/const/CHILDOFCATHEDRAL	=(1<<0)
var/const/PREACHER			=(1<<1)
var/const/MUTANT			=(1<<2)

//var/const/VAULT			=(1<<10)
//var/const/VAULT_OVERSEER	=(1<<0)
//var/const/VAULT_RESIDENT	=(1<<1)
///var/const/VAULT_MEDIC		=(1<<1)
///var/const/VAULT_SCIENTIST	=(1<<2)
///var/const/VAULT_SECURITY	=(1<<3)
///var/const/VAULT_ENGINER	=(1<<4)
//var/const/VAULT_RESIDENT	=(1<<16/*5*/)
///var/const/VAULT_BOTANIST	=(1<<6)
///var/const/VAULT_BARTENDER	=(1<<7)

var/list/fallout_head_positions = list(
	"Paladin",
	"Sergeant",
	"Centurion",
	"Sergeant NCR",
	"Veteran Ranger",
	"Overseer",
	"Preacher"
)


/proc/whitelist_jobbans(job)
	return (job in fallout_head_positions)
