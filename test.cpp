#include "test.h"

Test::Test(QObject *parent)
    : QObject{parent}
{

}

int Test::number()
{
    // Return an int
    qInfo() << "Called number()";
    return 42;

}

void Test::bark(QString name)
{
    qInfo() << "Bark, bark, bark";
    qInfo() << name;
}
