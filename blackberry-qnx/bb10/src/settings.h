/*
 * Settings.h
 *
 *  Created on: 2014-04-12
 *      Author: Justin
 */


#ifndef SETTINGS_H_
#define SETTINGS_H_

#include <bb/cascades/Application>

class Settings
	{

public:
	Settings();
	~Settings();
	Q_INVOKABLE QString getValueFor(const QString &objectName,
			const QString &defaultValue);

	Q_INVOKABLE void saveValueFor(const QString &objectName,
			const QString &inputValue);


private:

	QString defaultValue;

};





#endif /* SETTINGS_H_ */
