
//{{BLOCK(arena)

//======================================================================
//
//	arena, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 439 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 14048 + 2048 = 16608
//
//	Time-stamp: 2017-04-23, 14:09:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ARENA_H
#define GRIT_ARENA_H

#define arenaTilesLen 14048
extern const unsigned short arenaTiles[7024];

#define arenaMapLen 2048
extern const unsigned short arenaMap[1024];

#define arenaPalLen 512
extern const unsigned short arenaPal[256];

#endif // GRIT_ARENA_H

//}}BLOCK(arena)
