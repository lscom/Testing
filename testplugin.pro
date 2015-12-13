DEFINES += TESTPLUGIN_LIBRARY

QTCREATOR_SOURCES = $$(QTC_SOURCE)
IDE_BUILD_TREE = $$(QTC_BUILD)

SOURCES += testpluginplugin.cpp \

HEADERS += testpluginplugin.h \
           testplugin_global.h \
           testpluginconstants.h

include(testplugin_dependencies.pri)
include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)
