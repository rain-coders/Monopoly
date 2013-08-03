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

    this->setTouchEnabled(true); // Включили мышь...

	CCSize visibleSize = CCDirector::sharedDirector()->getVisibleSize();
	CCPoint origin = CCDirector::sharedDirector()->getVisibleOrigin();

    CCSprite *background = CCSprite::create("backrgound.png");
    background->setPosition(ccp(visibleSize.width/2,visibleSize.height/2));
    this->addChild(background,0);

    CCLabelTTF *lbl = CCLabelTTF::create("Ready?", "Sans", 20);
    lbl->setPosition(ccp(visibleSize.width/2,650) );
    this->addChild(lbl,100);
    CCFiniteTimeAction *move_lbl = CCMoveTo::create(1,ccp( visibleSize.width/2, 450)); // 1 аргумент это скорость
    CCFiniteTimeAction *scale_lbl = CCScaleBy::create(0.4,visibleSize.width/2,0);
    CCFiniteTimeAction *del_lbl = CCCallFuncN::create(this,callfuncN_selector(GENERAL::Delete_Me));
    lbl->runAction( CCSequence::create(move_lbl,scale_lbl,del_lbl,NULL) );

    s =  CCSprite::create("ship.png");
    s->setScale(0.5);
    s->setPosition(ccp(visibleSize.width/2 + origin.x,50));
    this->addChild(s,1);

    CCFiniteTimeAction *move = CCMoveTo::create(0.5,ccp( s->getPositionX(), s->getPositionY()+50)); // 1 аргумент это скорость
    CCFiniteTimeAction *move_done = CCCallFuncN::create(this,callfuncN_selector(GENERAL::Move_Complete));
    s->runAction( CCSequence::create(move, move_done, NULL) );

    CCMenuItemImage *button = CCMenuItemImage::create("button_on.png","button_off.png",this,menu_selector(GENERAL::menuCloseCallback));
    button->setPosition(ccp(570,35));
    button->setScale(0.5);

    CCMenu* button_menu = CCMenu::create(button, NULL);
    button_menu->setPosition(CCPointZero);
    this->addChild(button_menu, 1);

    this->addChild(CCParticleGalaxy::create() ,0.5 );

    this->schedule(schedule_selector(GENERAL::Add_Meteor),0.5); // Вызов повторяющийся

    CocosDenshion::SimpleAudioEngine::sharedEngine()->playBackgroundMusic("Level_1.wav", false);

	return true;

}

void GENERAL::menuCloseCallback(CCObject* pSender)
{
    CCDirector::sharedDirector()->end();
}

void GENERAL::Move_Complete()
{
    CCLog("Я на месте жду новые данные на выполнение");
}

void GENERAL::Add_Meteor()
{

    int go_or_not = 0+rand()%(1-0+1);

    if(go_or_not){ // полетер метеор по рандомным координатам


        CCSprite *meteor; meteor = CCSprite::create("meteor.png");
        meteor->setPosition(ccp(0+rand()%(600-0+1),600));
        this->addChild(meteor,1);
        CCFiniteTimeAction *move = CCMoveTo::create(2,ccp(meteor->getPositionX(),-100));
        CCFiniteTimeAction *move_done = CCCallFuncN::create(this,callfuncN_selector(GENERAL::Delete_Me));
        meteor->runAction(CCSequence::create(move, move_done, NULL));

        fire = CCParticleFire::create();
        fire->setLife(0.4);
        fire->setPosition(meteor->getPositionX(),meteor->getPositionY());
        this->addChild(fire,1);
        CCFiniteTimeAction *move_f = CCMoveTo::create(2,ccp(meteor->getPositionX(),-200));
        CCFiniteTimeAction *move_done_f = CCCallFuncN::create(this,callfuncN_selector(GENERAL::Delete_Me));
        fire->runAction(CCSequence::create(move_f, move_done_f,NULL));

    }

}

void GENERAL::Delete_Me(CCNode* sender)
{
    this->removeChild(sender,true);
}

void GENERAL::registerWithTouchDispatcher()
{
    CCDirector::sharedDirector()->getTouchDispatcher()->addStandardDelegate(this,0); // Это что?!
}

void GENERAL::ccTouchesEnded(CCSet *touches, CCEvent *event) // Реагирование на мышь
{

    CCTouch* touch = (CCTouch*)( touches->anyObject() );
    CCPoint location = touch->getLocation();

    CCLog("Команда получена. Привожу в исполнение: x:%d, y:%d", location.x, location.y);

    CCFiniteTimeAction *move = CCMoveTo::create(0.5,ccp( location.x, location.y)); // 1 аргумент это скорость
    CCFiniteTimeAction *move_done = CCCallFuncN::create(this,callfuncN_selector(GENERAL::Move_Complete));

    s->runAction( CCSequence::create(move, move_done,NULL) );

}



// Как плавно пошагово скейлить к примеру?
// События на нажатия клавы?
