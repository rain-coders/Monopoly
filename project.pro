TARGET = I_Am_Cocos2D
TEMPLATE = app
CONFIG -= app_bundle console qt

QMAKE_CXXFLAGS += -MP[2]                       # Количество ядер
QMAKE_CXXFLAGS += -Wno-ignored-qualifiers      # предупреждение: type qualifiers ignored on function return type [-Wignored-qualifiers]
QMAKE_CXXFLAGS += -Wno-unused-parameter        # предупреждение: unused parameter 'nHandler' [-Wunused-parameter]
QMAKE_CXXFLAGS += -Wno-deprecated-declarations # предупреждение: is deprecated

CONFIG(debug, debug|release) {
    DESTDIR = bin/debug/
}

CONFIG(release, debug|release) {
    DESTDIR = bin/release/
}

SOURCES += main.cpp \
        AppDelegate.cpp \
        general.cpp

HEADERS += \
        AppDelegate.h \
        general.h \
        headers.h

%COCOS_DENSHION%COCOS2D-X_MODULES += CocosDenshion                                              # Звуковой движок
COCOS2D-X_MODULES += chipmunk                                                                   # Подвязка chipmunk ИМЕННО для cocos2В

COCOS2D_ROOT = $$PWD/cocos2dx                                                                   # Путь к корневой папке cocos2D

COCOS_INCLUDE_DEPEND_PATH += $$COCOS2D_ROOT/cocos2dx \                                          # Сканируем зависимости для cocos2D
        $$COCOS2D_ROOT/cocos2dx/include \
        $$COCOS2D_ROOT/cocos2dx/cocoa \
        $$COCOS2D_ROOT/cocos2dx/kazmath/include \
        $$COCOS2D_ROOT/cocos2dx/platform

contains(COCOS2D-X_MODULES,CocosDenshion) {                                                     # Зависимости для cocos2D
        COCOS_INCLUDE_DEPEND_PATH += $$COCOS2D_ROOT/CocosDenshion/include
}

contains(COCOS2D-X_MODULES,chipmunk) {
        COCOS_INCLUDE_DEPEND_PATH += $$PWD/ch_pro/chipmunk
}

DEFINES += LINUX

COCOS_INCLUDE_DEPEND_PATH += $$COCOS2D_ROOT/cocos2dx/platform/linux \
        $$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include/ \
        $$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/libfreetype2 \
        $$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/libxml2 \
        $$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/libjpeg

LBITS = $$system(getconf LONG_BIT)

COCOS_INCLUDE_DEPEND_PATH += $$COCOS2D_ROOT/platform/third_party/linux                          # Только для 32x
STATICLIBS_DIR += $$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/libraries
contains(COCOS2D-X_MODULES,CocosDenshion) {
        SHAREDLIBS_DIR += $$COCOS2D_ROOT/CocosDenshion/third_party/fmod/api/lib
        SHAREDLIBS += -L$$SHAREDLIBS_DIR -lfmodex
}

STATICLIBS += $$STATICLIBS_DIR/libfreetype.a \
        $$STATICLIBS_DIR/libxml2.a \
        $$STATICLIBS_DIR/libpng.a \
        $$STATICLIBS_DIR/libjpeg.a \
        $$STATICLIBS_DIR/libtiff.a

contains(CONFIG,debug) {
        DEFINES += DEBUG
        SHAREDLIBS += -L$$COCOS2D_ROOT/lib/linux/Debug -Wl,-rpath,$$COCOS2D_ROOT/lib/linux/Debug
} else {
        DEFINES += NDEBUG
        SHAREDLIBS += -L$$COCOS2D_ROOT/lib/linux/Release -Wl,-rpath,$$COCOS2D_ROOT/lib/linux/Release
}

SHAREDLIBS += -lrt -lz

LIBS += $$COCOS2D_ROOT/lib/linux/debug/libcocos2d.so
LIBS += $$COCOS2D_ROOT/lib/linux/debug/libcocosdenshion.so
LIBS += $$PWD/ch_pro/chipmunk/libchipmunk.a

contains(COCOS2D-X_MODULES,CocosDenshion) {
        SHAREDLIBS += -lcocosdenshion
}

SHAREDLIBS += -lglfw -lGL
SHAREDLIBS += -Wl,-rpath,$${SHAREDLIBS_DIR}
SHAREDLIBS += -L$$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/lib -lGLEW
SHAREDLIBS += -Wl,-rpath,$$COCOS2D_ROOT/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/lib
SHAREDLIBS += -Wl,-rpath,$$STATICLIBS_DIR
SHAREDLIBS += -Wl,-rpath,$$COCOS2D_ROOT/CocosDenshion/third_party/fmod/api/lib  # Подкинули CocosDenshion .SO

LIBS +=	$${STATICLIBS}
LIBS += $${SHAREDLIBS}

INCLUDEPATH += $${COCOS_INCLUDE_DEPEND_PATH}
DEPENDPATH += $${COCOS_INCLUDE_DEPEND_PATH}

OTHER_FILES += \
    bin/bin/debug/res/cards/card_asus_tablets/player_sticker.png \
    bin/bin/debug/res/cards/card_asus_tablets/glow_and_gradient.png \
    bin/bin/debug/res/cards/card_asus_tablets/device.png \
    bin/bin/debug/res/cards/card_asus_tablets/border.png \
    bin/bin/debug/res/cards/card_asus_tablets/bg.png \
    bin/bin/debug/res/cards/card_samsung_tablets/card_samsung_tablets.png
