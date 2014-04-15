/*
 * settings.cpp
 *
 *  Created on: 2014-04-12
 *      Author: Justin
 */

#include "Settings.h"
#include <bb/cascades/Application>
#include <bb/cascades/ArrayDataModel>
#include <bb/cascades/DropDown>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/AbstractPane>

#include <QUrl>
#include <QString>

using namespace bb::cascades;


Settings::Settings()
{
	defaultValue = "none";
}

Settings::~Settings()
{

}

QString Settings::getValueFor(const QString &objectName,
		const QString &defaultValue) {
	QSettings settings("RetroArch", "RetroArch");
	if (settings.value(objectName).isNull()) {
		return defaultValue;
	}
	qDebug() << "get: " << settings.value(objectName).toString();
	return settings.value(objectName).toString();

}

void Settings::saveValueFor(const QString &objectName,
		const QString &inputValue) {
	QSettings settings("RetroArch", "RetroArch");
	settings.setValue(objectName, QVariant(inputValue));
	qDebug() << objectName << "is set to: " << inputValue;
}


