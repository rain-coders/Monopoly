#############################################################################
# Makefile for building: bin/debug/I_Am_Cocos2D
# Generated by qmake (2.01a) (Qt 4.8.1) on: Sun Aug 4 00:27:01 2013
# Project:  project.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile project.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DLINUX -DDEBUG
CFLAGS        = -pipe -g -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -MP[2] -Wno-ignored-qualifiers -Wno-unused-parameter -Wno-deprecated-declarations -g -Wall -W $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -Icocos2dx/cocos2dx -Icocos2dx/cocos2dx/include -Icocos2dx/cocos2dx/cocoa -Icocos2dx/cocos2dx/kazmath/include -Icocos2dx/cocos2dx/platform -Ich_pro/chipmunk -Icocos2dx/cocos2dx/platform/linux -I/home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include/ -Icocos2dx/cocos2dx/platform/third_party/linux/libfreetype2 -I/home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libxml2 -Icocos2dx/cocos2dx/platform/third_party/linux/libjpeg -I/home/madness/rain-coders-Monopoly/cocos2dx/platform/third_party/linux
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)   /home/madness/rain-coders-Monopoly/cocos2dx/lib/linux/debug/libcocos2d.so /home/madness/rain-coders-Monopoly/cocos2dx/lib/linux/debug/libcocosdenshion.so /home/madness/rain-coders-Monopoly/ch_pro/chipmunk/libchipmunk.a /home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries/libfreetype.a /home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries/libxml2.a /home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries/libpng.a /home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries/libjpeg.a /home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries/libtiff.a -L/home/madness/rain-coders-Monopoly/cocos2dx/lib/linux/Debug -Wl,-rpath,/home/madness/rain-coders-Monopoly/cocos2dx/lib/linux/Debug -lrt -lz -lglfw -lGL -Wl,-rpath, -L/home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/lib -lGLEW -Wl,-rpath,/home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/lib -Wl,-rpath,/home/madness/rain-coders-Monopoly/cocos2dx/cocos2dx/platform/third_party/linux/libraries -Wl,-rpath,/home/madness/rain-coders-Monopoly/cocos2dx/CocosDenshion/third_party/fmod/api/lib 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		AppDelegate.cpp \
		general.cpp 
OBJECTS       = main.o \
		AppDelegate.o \
		general.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		project.pro
QMAKE_TARGET  = I_Am_Cocos2D
DESTDIR       = bin/debug/
TARGET        = bin/debug/I_Am_Cocos2D

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	@$(CHK_DIR_EXISTS) bin/debug/ || $(MKDIR) bin/debug/ 
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: project.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/declarative_debug.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile project.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/declarative_debug.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ CONFIG+=debug CONFIG+=declarative_debug -o Makefile project.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/I_Am_Cocos2D1.0.0 || $(MKDIR) .tmp/I_Am_Cocos2D1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/I_Am_Cocos2D1.0.0/ && (cd `dirname .tmp/I_Am_Cocos2D1.0.0` && $(TAR) I_Am_Cocos2D1.0.0.tar I_Am_Cocos2D1.0.0 && $(COMPRESS) I_Am_Cocos2D1.0.0.tar) && $(MOVE) `dirname .tmp/I_Am_Cocos2D1.0.0`/I_Am_Cocos2D1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/I_Am_Cocos2D1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

main.o: main.cpp headers.h \
		cocos2dx/cocos2dx/platform/linux/CCStdC.h \
		cocos2dx/cocos2dx/platform/CCPlatformMacros.h \
		cocos2dx/cocos2dx/include/ccConfig.h \
		cocos2dx/cocos2dx/platform/CCPlatformConfig.h \
		cocos2dx/cocos2dx/platform/linux/CCPlatformDefine.h \
		AppDelegate.h \
		cocos2dx/cocos2dx/include/cocos2d.h \
		cocos2dx/cocos2dx/actions/CCAction.h \
		cocos2dx/cocos2dx/cocoa/CCObject.h \
		cocos2dx/cocos2dx/cocoa/CCGeometry.h \
		cocos2dx/cocos2dx/actions/CCActionInterval.h \
		cocos2dx/cocos2dx/base_nodes/CCNode.h \
		cocos2dx/cocos2dx/include/ccMacros.h \
		cocos2dx/cocos2dx/platform/CCCommon.h \
		cocos2dx/cocos2dx/cocoa/CCAffineTransform.h \
		cocos2dx/cocos2dx/cocoa/CCArray.h \
		cocos2dx/cocos2dx/support/data_support/ccCArray.h \
		cocos2dx/cocos2dx/platform/linux/CCGL.h \
		cocos2dx/cocos2dx/shaders/ccGLStateCache.h \
		cocos2dx/cocos2dx/shaders/CCGLProgram.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/kazmath.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec2.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/utility.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat4.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/quaternion.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/plane.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/aabb.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/ray2.h \
		cocos2dx/cocos2dx/script_support/CCScriptSupport.h \
		cocos2dx/cocos2dx/platform/linux/CCAccelerometer.h \
		cocos2dx/cocos2dx/platform/CCAccelerometerDelegate.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouch.h \
		cocos2dx/cocos2dx/cocoa/CCSet.h \
		cocos2dx/cocos2dx/include/CCProtocols.h \
		cocos2dx/cocos2dx/include/ccTypes.h \
		cocos2dx/cocos2dx/textures/CCTexture2D.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrame.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimation.h \
		cocos2dx/cocos2dx/cocoa/CCDictionary.h \
		cocos2dx/cocos2dx/support/data_support/uthash.h \
		cocos2dx/cocos2dx/cocoa/CCString.h \
		cocos2dx/cocos2dx/actions/CCActionCamera.h \
		cocos2dx/cocos2dx/actions/CCActionManager.h \
		cocos2dx/cocos2dx/actions/CCActionEase.h \
		cocos2dx/cocos2dx/actions/CCActionPageTurn3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid.h \
		cocos2dx/cocos2dx/actions/CCActionInstant.h \
		cocos2dx/cocos2dx/include/ccTypeInfo.h \
		cocos2dx/cocos2dx/actions/CCActionProgressTimer.h \
		cocos2dx/cocos2dx/actions/CCActionTiledGrid.h \
		cocos2dx/cocos2dx/actions/CCActionTween.h \
		cocos2dx/cocos2dx/actions/CCActionCatmullRom.h \
		cocos2dx/cocos2dx/base_nodes/CCAtlasNode.h \
		cocos2dx/cocos2dx/cocoa/CCAutoreleasePool.h \
		cocos2dx/cocos2dx/cocoa/CCInteger.h \
		cocos2dx/cocos2dx/cocoa/CCFloat.h \
		cocos2dx/cocos2dx/cocoa/CCDouble.h \
		cocos2dx/cocos2dx/cocoa/CCBool.h \
		cocos2dx/cocos2dx/cocoa/CCNS.h \
		cocos2dx/cocos2dx/cocoa/CCZone.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawingPrimitives.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawNode.h \
		cocos2dx/cocos2dx/effects/CCGrabber.h \
		cocos2dx/cocos2dx/CCConfiguration.h \
		cocos2dx/cocos2dx/effects/CCGrid.h \
		cocos2dx/cocos2dx/CCCamera.h \
		cocos2dx/cocos2dx/CCDirector.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelTTF.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSprite.h \
		cocos2dx/cocos2dx/textures/CCTextureAtlas.h \
		cocos2dx/cocos2dx/include/CCEventType.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/GL/matrix.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDelegate.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDispatcher.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelAtlas.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelBMFont.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteBatchNode.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCLayer.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDelegateProtocol.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCScene.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransition.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionPageTurn.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionProgress.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenu.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenuItem.h \
		cocos2dx/cocos2dx/misc_nodes/CCClippingNode.h \
		cocos2dx/cocos2dx/misc_nodes/CCMotionStreak.h \
		cocos2dx/cocos2dx/misc_nodes/CCProgressTimer.h \
		cocos2dx/cocos2dx/misc_nodes/CCRenderTexture.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleBatchNode.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystem.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleExamples.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystemQuad.h \
		cocos2dx/cocos2dx/platform/CCDevice.h \
		cocos2dx/cocos2dx/platform/CCFileUtils.h \
		cocos2dx/cocos2dx/platform/CCImage.h \
		cocos2dx/cocos2dx/platform/CCSAXParser.h \
		cocos2dx/cocos2dx/platform/CCThread.h \
		cocos2dx/cocos2dx/platform/platform.h \
		cocos2dx/cocos2dx/platform/linux/CCApplication.h \
		cocos2dx/cocos2dx/platform/CCApplicationProtocol.h \
		cocos2dx/cocos2dx/platform/linux/CCEGLView.h \
		cocos2dx/cocos2dx/platform/CCEGLViewProtocol.h \
		cocos2dx/cocos2dx/shaders/CCShaderCache.h \
		cocos2dx/cocos2dx/shaders/ccShaders.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimationCache.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrameCache.h \
		cocos2dx/cocos2dx/support/ccUTF8.h \
		cocos2dx/cocos2dx/support/CCNotificationCenter.h \
		cocos2dx/cocos2dx/support/CCPointExtension.h \
		cocos2dx/cocos2dx/support/CCProfiling.h \
		cocos2dx/cocos2dx/support/user_default/CCUserDefault.h \
		cocos2dx/cocos2dx/support/CCVertex.h \
		cocos2dx/cocos2dx/support/tinyxml2/tinyxml2.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDelegate.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDispatcher.h \
		cocos2dx/cocos2dx/text_input_node/CCTextFieldTTF.h \
		cocos2dx/cocos2dx/textures/CCTextureCache.h \
		cocos2dx/cocos2dx/textures/CCTexturePVR.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCParallaxNode.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXLayer.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXObjectGroup.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXXMLParser.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXTiledMap.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTileMapAtlas.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDispatcher.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchHandler.h \
		cocos2dx/cocos2dx/CCScheduler.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

AppDelegate.o: AppDelegate.cpp AppDelegate.h \
		cocos2dx/cocos2dx/include/cocos2d.h \
		cocos2dx/cocos2dx/include/ccConfig.h \
		cocos2dx/cocos2dx/platform/CCPlatformConfig.h \
		cocos2dx/cocos2dx/actions/CCAction.h \
		cocos2dx/cocos2dx/cocoa/CCObject.h \
		cocos2dx/cocos2dx/platform/CCPlatformMacros.h \
		cocos2dx/cocos2dx/platform/linux/CCPlatformDefine.h \
		cocos2dx/cocos2dx/cocoa/CCGeometry.h \
		cocos2dx/cocos2dx/actions/CCActionInterval.h \
		cocos2dx/cocos2dx/base_nodes/CCNode.h \
		cocos2dx/cocos2dx/include/ccMacros.h \
		cocos2dx/cocos2dx/platform/CCCommon.h \
		cocos2dx/cocos2dx/platform/linux/CCStdC.h \
		cocos2dx/cocos2dx/cocoa/CCAffineTransform.h \
		cocos2dx/cocos2dx/cocoa/CCArray.h \
		cocos2dx/cocos2dx/support/data_support/ccCArray.h \
		cocos2dx/cocos2dx/platform/linux/CCGL.h \
		cocos2dx/cocos2dx/shaders/ccGLStateCache.h \
		cocos2dx/cocos2dx/shaders/CCGLProgram.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/kazmath.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec2.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/utility.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat4.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/quaternion.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/plane.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/aabb.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/ray2.h \
		cocos2dx/cocos2dx/script_support/CCScriptSupport.h \
		cocos2dx/cocos2dx/platform/linux/CCAccelerometer.h \
		cocos2dx/cocos2dx/platform/CCAccelerometerDelegate.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouch.h \
		cocos2dx/cocos2dx/cocoa/CCSet.h \
		cocos2dx/cocos2dx/include/CCProtocols.h \
		cocos2dx/cocos2dx/include/ccTypes.h \
		cocos2dx/cocos2dx/textures/CCTexture2D.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrame.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimation.h \
		cocos2dx/cocos2dx/cocoa/CCDictionary.h \
		cocos2dx/cocos2dx/support/data_support/uthash.h \
		cocos2dx/cocos2dx/cocoa/CCString.h \
		cocos2dx/cocos2dx/actions/CCActionCamera.h \
		cocos2dx/cocos2dx/actions/CCActionManager.h \
		cocos2dx/cocos2dx/actions/CCActionEase.h \
		cocos2dx/cocos2dx/actions/CCActionPageTurn3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid.h \
		cocos2dx/cocos2dx/actions/CCActionInstant.h \
		cocos2dx/cocos2dx/include/ccTypeInfo.h \
		cocos2dx/cocos2dx/actions/CCActionProgressTimer.h \
		cocos2dx/cocos2dx/actions/CCActionTiledGrid.h \
		cocos2dx/cocos2dx/actions/CCActionTween.h \
		cocos2dx/cocos2dx/actions/CCActionCatmullRom.h \
		cocos2dx/cocos2dx/base_nodes/CCAtlasNode.h \
		cocos2dx/cocos2dx/cocoa/CCAutoreleasePool.h \
		cocos2dx/cocos2dx/cocoa/CCInteger.h \
		cocos2dx/cocos2dx/cocoa/CCFloat.h \
		cocos2dx/cocos2dx/cocoa/CCDouble.h \
		cocos2dx/cocos2dx/cocoa/CCBool.h \
		cocos2dx/cocos2dx/cocoa/CCNS.h \
		cocos2dx/cocos2dx/cocoa/CCZone.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawingPrimitives.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawNode.h \
		cocos2dx/cocos2dx/effects/CCGrabber.h \
		cocos2dx/cocos2dx/CCConfiguration.h \
		cocos2dx/cocos2dx/effects/CCGrid.h \
		cocos2dx/cocos2dx/CCCamera.h \
		cocos2dx/cocos2dx/CCDirector.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelTTF.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSprite.h \
		cocos2dx/cocos2dx/textures/CCTextureAtlas.h \
		cocos2dx/cocos2dx/include/CCEventType.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/GL/matrix.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDelegate.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDispatcher.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelAtlas.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelBMFont.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteBatchNode.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCLayer.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDelegateProtocol.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCScene.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransition.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionPageTurn.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionProgress.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenu.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenuItem.h \
		cocos2dx/cocos2dx/misc_nodes/CCClippingNode.h \
		cocos2dx/cocos2dx/misc_nodes/CCMotionStreak.h \
		cocos2dx/cocos2dx/misc_nodes/CCProgressTimer.h \
		cocos2dx/cocos2dx/misc_nodes/CCRenderTexture.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleBatchNode.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystem.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleExamples.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystemQuad.h \
		cocos2dx/cocos2dx/platform/CCDevice.h \
		cocos2dx/cocos2dx/platform/CCFileUtils.h \
		cocos2dx/cocos2dx/platform/CCImage.h \
		cocos2dx/cocos2dx/platform/CCSAXParser.h \
		cocos2dx/cocos2dx/platform/CCThread.h \
		cocos2dx/cocos2dx/platform/platform.h \
		cocos2dx/cocos2dx/platform/linux/CCApplication.h \
		cocos2dx/cocos2dx/platform/CCApplicationProtocol.h \
		cocos2dx/cocos2dx/platform/linux/CCEGLView.h \
		cocos2dx/cocos2dx/platform/CCEGLViewProtocol.h \
		cocos2dx/cocos2dx/shaders/CCShaderCache.h \
		cocos2dx/cocos2dx/shaders/ccShaders.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimationCache.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrameCache.h \
		cocos2dx/cocos2dx/support/ccUTF8.h \
		cocos2dx/cocos2dx/support/CCNotificationCenter.h \
		cocos2dx/cocos2dx/support/CCPointExtension.h \
		cocos2dx/cocos2dx/support/CCProfiling.h \
		cocos2dx/cocos2dx/support/user_default/CCUserDefault.h \
		cocos2dx/cocos2dx/support/CCVertex.h \
		cocos2dx/cocos2dx/support/tinyxml2/tinyxml2.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDelegate.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDispatcher.h \
		cocos2dx/cocos2dx/text_input_node/CCTextFieldTTF.h \
		cocos2dx/cocos2dx/textures/CCTextureCache.h \
		cocos2dx/cocos2dx/textures/CCTexturePVR.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCParallaxNode.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXLayer.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXObjectGroup.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXXMLParser.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXTiledMap.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTileMapAtlas.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDispatcher.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchHandler.h \
		cocos2dx/cocos2dx/CCScheduler.h \
		general.h \
		cocos2dx/CocosDenshion/include/SimpleAudioEngine.h \
		cocos2dx/CocosDenshion/include/Export.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o AppDelegate.o AppDelegate.cpp

general.o: general.cpp general.h \
		cocos2dx/cocos2dx/include/cocos2d.h \
		cocos2dx/cocos2dx/include/ccConfig.h \
		cocos2dx/cocos2dx/platform/CCPlatformConfig.h \
		cocos2dx/cocos2dx/actions/CCAction.h \
		cocos2dx/cocos2dx/cocoa/CCObject.h \
		cocos2dx/cocos2dx/platform/CCPlatformMacros.h \
		cocos2dx/cocos2dx/platform/linux/CCPlatformDefine.h \
		cocos2dx/cocos2dx/cocoa/CCGeometry.h \
		cocos2dx/cocos2dx/actions/CCActionInterval.h \
		cocos2dx/cocos2dx/base_nodes/CCNode.h \
		cocos2dx/cocos2dx/include/ccMacros.h \
		cocos2dx/cocos2dx/platform/CCCommon.h \
		cocos2dx/cocos2dx/platform/linux/CCStdC.h \
		cocos2dx/cocos2dx/cocoa/CCAffineTransform.h \
		cocos2dx/cocos2dx/cocoa/CCArray.h \
		cocos2dx/cocos2dx/support/data_support/ccCArray.h \
		cocos2dx/cocos2dx/platform/linux/CCGL.h \
		cocos2dx/cocos2dx/shaders/ccGLStateCache.h \
		cocos2dx/cocos2dx/shaders/CCGLProgram.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/kazmath.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec2.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/vec3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat3.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/utility.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/mat4.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/quaternion.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/plane.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/aabb.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/ray2.h \
		cocos2dx/cocos2dx/script_support/CCScriptSupport.h \
		cocos2dx/cocos2dx/platform/linux/CCAccelerometer.h \
		cocos2dx/cocos2dx/platform/CCAccelerometerDelegate.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouch.h \
		cocos2dx/cocos2dx/cocoa/CCSet.h \
		cocos2dx/cocos2dx/include/CCProtocols.h \
		cocos2dx/cocos2dx/include/ccTypes.h \
		cocos2dx/cocos2dx/textures/CCTexture2D.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrame.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimation.h \
		cocos2dx/cocos2dx/cocoa/CCDictionary.h \
		cocos2dx/cocos2dx/support/data_support/uthash.h \
		cocos2dx/cocos2dx/cocoa/CCString.h \
		cocos2dx/cocos2dx/actions/CCActionCamera.h \
		cocos2dx/cocos2dx/actions/CCActionManager.h \
		cocos2dx/cocos2dx/actions/CCActionEase.h \
		cocos2dx/cocos2dx/actions/CCActionPageTurn3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid3D.h \
		cocos2dx/cocos2dx/actions/CCActionGrid.h \
		cocos2dx/cocos2dx/actions/CCActionInstant.h \
		cocos2dx/cocos2dx/include/ccTypeInfo.h \
		cocos2dx/cocos2dx/actions/CCActionProgressTimer.h \
		cocos2dx/cocos2dx/actions/CCActionTiledGrid.h \
		cocos2dx/cocos2dx/actions/CCActionTween.h \
		cocos2dx/cocos2dx/actions/CCActionCatmullRom.h \
		cocos2dx/cocos2dx/base_nodes/CCAtlasNode.h \
		cocos2dx/cocos2dx/cocoa/CCAutoreleasePool.h \
		cocos2dx/cocos2dx/cocoa/CCInteger.h \
		cocos2dx/cocos2dx/cocoa/CCFloat.h \
		cocos2dx/cocos2dx/cocoa/CCDouble.h \
		cocos2dx/cocos2dx/cocoa/CCBool.h \
		cocos2dx/cocos2dx/cocoa/CCNS.h \
		cocos2dx/cocos2dx/cocoa/CCZone.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawingPrimitives.h \
		cocos2dx/cocos2dx/draw_nodes/CCDrawNode.h \
		cocos2dx/cocos2dx/effects/CCGrabber.h \
		cocos2dx/cocos2dx/CCConfiguration.h \
		cocos2dx/cocos2dx/effects/CCGrid.h \
		cocos2dx/cocos2dx/CCCamera.h \
		cocos2dx/cocos2dx/CCDirector.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelTTF.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSprite.h \
		cocos2dx/cocos2dx/textures/CCTextureAtlas.h \
		cocos2dx/cocos2dx/include/CCEventType.h \
		cocos2dx/cocos2dx/kazmath/include/kazmath/GL/matrix.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDelegate.h \
		cocos2dx/cocos2dx/keypad_dispatcher/CCKeypadDispatcher.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelAtlas.h \
		cocos2dx/cocos2dx/label_nodes/CCLabelBMFont.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteBatchNode.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCLayer.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDelegateProtocol.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCScene.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransition.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionPageTurn.h \
		cocos2dx/cocos2dx/layers_scenes_transitions_nodes/CCTransitionProgress.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenu.h \
		cocos2dx/cocos2dx/menu_nodes/CCMenuItem.h \
		cocos2dx/cocos2dx/misc_nodes/CCClippingNode.h \
		cocos2dx/cocos2dx/misc_nodes/CCMotionStreak.h \
		cocos2dx/cocos2dx/misc_nodes/CCProgressTimer.h \
		cocos2dx/cocos2dx/misc_nodes/CCRenderTexture.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleBatchNode.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystem.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleExamples.h \
		cocos2dx/cocos2dx/particle_nodes/CCParticleSystemQuad.h \
		cocos2dx/cocos2dx/platform/CCDevice.h \
		cocos2dx/cocos2dx/platform/CCFileUtils.h \
		cocos2dx/cocos2dx/platform/CCImage.h \
		cocos2dx/cocos2dx/platform/CCSAXParser.h \
		cocos2dx/cocos2dx/platform/CCThread.h \
		cocos2dx/cocos2dx/platform/platform.h \
		cocos2dx/cocos2dx/platform/linux/CCApplication.h \
		cocos2dx/cocos2dx/platform/CCApplicationProtocol.h \
		cocos2dx/cocos2dx/platform/linux/CCEGLView.h \
		cocos2dx/cocos2dx/platform/CCEGLViewProtocol.h \
		cocos2dx/cocos2dx/shaders/CCShaderCache.h \
		cocos2dx/cocos2dx/shaders/ccShaders.h \
		cocos2dx/cocos2dx/sprite_nodes/CCAnimationCache.h \
		cocos2dx/cocos2dx/sprite_nodes/CCSpriteFrameCache.h \
		cocos2dx/cocos2dx/support/ccUTF8.h \
		cocos2dx/cocos2dx/support/CCNotificationCenter.h \
		cocos2dx/cocos2dx/support/CCPointExtension.h \
		cocos2dx/cocos2dx/support/CCProfiling.h \
		cocos2dx/cocos2dx/support/user_default/CCUserDefault.h \
		cocos2dx/cocos2dx/support/CCVertex.h \
		cocos2dx/cocos2dx/support/tinyxml2/tinyxml2.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDelegate.h \
		cocos2dx/cocos2dx/text_input_node/CCIMEDispatcher.h \
		cocos2dx/cocos2dx/text_input_node/CCTextFieldTTF.h \
		cocos2dx/cocos2dx/textures/CCTextureCache.h \
		cocos2dx/cocos2dx/textures/CCTexturePVR.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCParallaxNode.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXLayer.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXObjectGroup.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXXMLParser.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTMXTiledMap.h \
		cocos2dx/cocos2dx/tilemap_parallax_nodes/CCTileMapAtlas.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchDispatcher.h \
		cocos2dx/cocos2dx/touch_dispatcher/CCTouchHandler.h \
		cocos2dx/cocos2dx/CCScheduler.h \
		cocos2dx/CocosDenshion/include/SimpleAudioEngine.h \
		cocos2dx/CocosDenshion/include/Export.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o general.o general.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

