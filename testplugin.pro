DEFINES += TESTPLUGIN_LIBRARY

SOURCES += testpluginplugin.cpp \

HEADERS += testpluginplugin.h \
           testplugin_global.h \
           testpluginconstants.h

QTCREATOR_SOURCES = $$(QTC_SOURCE)
IDE_BUILD_TREE = $$(QTC_BUILD)

!isEmpty(OUTPUT_PATH) {
    USE_USER_DESTDIR = yes
    DESTDIR = $$OUTPUT_PATH
}

include(testplugin_dependencies.pri)
include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)
