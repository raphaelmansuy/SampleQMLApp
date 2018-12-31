#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFontDatabase>
#include <QtDebug>

void loadFonts() {
   qDebug() <<  QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Black.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-BlackItalic.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Bold.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-BoldItalic.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Light.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-LightItalic.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Medium.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-MediumItalic.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Regular.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-Thin.ttf"));
    QFontDatabase::addApplicationFont(QStringLiteral(":/assets/fonts/Roboto-ThinItalic.ttf"));
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);


    QGuiApplication app(argc, argv);
    loadFonts();


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
