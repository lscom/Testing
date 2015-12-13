#ifndef TESTPLUGIN_H
#define TESTPLUGIN_H

#include "testplugin_global.h"

#include <extensionsystem/iplugin.h>

namespace TestPlugin {
namespace Internal {

class TestPluginPlugin : public ExtensionSystem::IPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QtCreatorPlugin" FILE "TestPlugin.json")

public:
    TestPluginPlugin();
    ~TestPluginPlugin();

    bool initialize(const QStringList &arguments, QString *errorString);
    void extensionsInitialized();
    ShutdownFlag aboutToShutdown();

private slots:
    void triggerAction();
};

} // namespace Internal
} // namespace TestPlugin

#endif // TESTPLUGIN_H

