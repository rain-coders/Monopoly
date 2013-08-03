#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "cocos2dx/CocosDenshion/include/SimpleAudioEngine.h"

using namespace cocos2d;

class GENERAL : public CCLayer
{

    CCSprite *s;
    CCParticleSystem *fire;

public:

    virtual bool init();  // Основной метод инициализации

    static cocos2d::CCScene* scene(); // Создание сцены
    
    void menuCloseCallback(CCObject* pSender); // Кэлбек на выход из приложения

    CREATE_FUNC(GENERAL); // implement the "static node()" method manually

    void Move_Complete();

    void Add_Meteor();

    void Delete_Me(CCNode *sender);

    void registerWithTouchDispatcher(); // что за чёрт?!

    void ccTouchesEnded(cocos2d::CCSet* touches, cocos2d::CCEvent* event);



};

#endif // __HELLOWORLD_SCENE_H__
