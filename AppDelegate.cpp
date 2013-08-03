#include "AppDelegate.h"
#include "general.h"

using namespace cocos2d;
using namespace std;

AppDelegate::AppDelegate()
{
}

AppDelegate::~AppDelegate() 
{
}

bool AppDelegate::applicationDidFinishLaunching()                                   // Вызывается сразу при запуске приложения
{

    CCDirector* pDirector = CCDirector::sharedDirector();                           // Инициализация директорий
    CCEGLView* pEGLView = CCEGLView::sharedOpenGLView();

    pDirector->setOpenGLView(pEGLView);

    pDirector->setDisplayStats(true);                                               // Отобразить FPS

    CCScene *pScene = GENERAL::scene();                                             // Создание сцены

    pDirector->runWithScene(pScene);                                                // Запуск сцены

    return true;

}

void AppDelegate::applicationDidEnterBackground()                                 // Функция вызываеться при телефонном звонке
{

    CCDirector::sharedDirector()->stopAnimation();

    // SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();                 // Если играет музыка приостановить

}

void AppDelegate::applicationWillEnterForeground()                                // Вызываеться если приложение вновь активно
{

    CCDirector::sharedDirector()->startAnimation();

    // SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();                // Возобновить аудио

}
