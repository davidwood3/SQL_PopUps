#include <QGuiApplication>
#include <QQmlApplicationEngine>

// imports
#include <QQmlContext>
#include "test.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // Add to the root context
    Test test;
    engine.rootContext()->setContextProperty("testing", &test);


    const QUrl url(u"qrc:/SQL_PopUps/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
