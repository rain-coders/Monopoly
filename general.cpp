#include "general.h"

using namespace cocos2d;
using namespace std;

CCScene* GENERAL::scene()
{

    srand(time(0));

    CCScene *scene = CCScene::create();             // Создаём сцену

    GENERAL *layer = GENERAL::create();             // Создаём слой для сцены

    scene->addChild(layer);                         // Добавляем слой в сцену

    return scene;                                   // Возвращаем готовую сцену

}

bool GENERAL::init()
{

    if ( !CCLayer::init() ) return false;




    return true;
}
