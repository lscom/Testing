DEFINES += TESTPLUGIN_LIBRARY

SOURCES += testpluginplugin.cpp \

HEADERS += testpluginplugin.h \
           testplugin_global.h \
           testpluginconstants.h

QTCREATOR_SOURCES = $$(QTC_SOURCE)
IDE_BUILD_TREE = $$(QTC_BUILD)

!isEmpty(QTC_PLUGIN_DESTDIR) {
#    USE_USER_DESTDIR = yes
    DESTDIR = $$QTC_PLUGIN_DESTDIR
}

include(testplugin_dependencies.pri)
include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)
