void updatePlayer(PLAYER* p, int b, int c);
int playerCollision(ENEMY* b, PLAYER* p);
void resetLocation(PLAYER* p);
int bulletCollision(ENEMYHORSE* p, BULLET* b);
int playerCollision2(ENEMYHORSE* b, PLAYER* p);
void updateKnight(ENEMYHORSE *b, int timeenemy);
void updatePlayer2(PLAYER* p, BULLET* a);
void updatePlayer3(PLAYER* p);
void updateMage(ENEMYMAGE *m, int cooldown);