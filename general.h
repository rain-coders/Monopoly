#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "cocos2dx/CocosDenshion/include/SimpleAudioEngine.h"

using namespace cocos2d;

class GENERAL : public CCLayer
{

public:

    virtual bool init();  // Основной метод инициализации

    static cocos2d::CCScene* scene(); // Создание сцены

    CREATE_FUNC(GENERAL); // implement the "static node()" method manually

};

#endif // __HELLOWORLD_SCENE_H__
