#include "headers.h"

using namespace cocos2d;
using namespace std;

int main()
{

    // 5123

    char fullpath[500];                                                     // путь к приложению...
    int length = readlink("/proc/self/exe", fullpath, sizeof(fullpath));
    fullpath[length] = '\0';

    string resourcePath = fullpath;
    resourcePath = resourcePath.substr(0, resourcePath.find_last_of("/"));
    resourcePath += "/../../bin/debug/Resources/";

    AppDelegate app;

    CCApplication::sharedApplication()->setResourceRootPath(resourcePath.c_str());
    CCEGLView* eglView = CCEGLView::sharedOpenGLView();
    eglView->setFrameSize(600, 600);

    return CCApplication::sharedApplication()->run();

}
