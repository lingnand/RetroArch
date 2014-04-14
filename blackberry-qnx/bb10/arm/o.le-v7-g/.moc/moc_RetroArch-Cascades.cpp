/****************************************************************************
** Meta object code from reading C++ file 'RetroArch-Cascades.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/RetroArch-Cascades.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'RetroArch-Cascades.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RetroArch[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       3,   69, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      11,   10,   10,   10, 0x05,
      31,   10,   10,   10, 0x05,
      52,   10,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
      82,   10,   10,   10, 0x0a,
      96,   10,   10,   10, 0x0a,
     118,   10,   10,   10, 0x0a,

 // methods: signature, parameters, type, tag, flags
     143,   10,   10,   10, 0x02,
     159,   10,   10,   10, 0x02,
     180,  173,   10,   10, 0x02,
     222,  204,   10,   10, 0x02,
     253,   10,   10,   10, 0x02,

 // properties: name, type, flags
     279,  271, 0x0a495103,
     283,  271, 0x0a495103,
     288,  271, 0x0a495001,

 // properties: notify_signal_id
       0,
       1,
       2,

       0        // eod
};

static const char qt_meta_stringdata_RetroArch[] = {
    "RetroArch\0\0romChanged(QString)\0"
    "coreChanged(QString)\0romExtensionsChanged(QString)\0"
    "aboutToQuit()\0onRotationCompleted()\0"
    "onCoreSelected(QVariant)\0startEmulator()\0"
    "findDevices()\0player\0discoverController(int)\0"
    "property,selected\0updateOptions(QString,QString)\0"
    "OrientationHack()\0QString\0rom\0core\0"
    "romExtensions\0"
};

void RetroArch::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RetroArch *_t = static_cast<RetroArch *>(_o);
        switch (_id) {
        case 0: _t->romChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->coreChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->romExtensionsChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->aboutToQuit(); break;
        case 4: _t->onRotationCompleted(); break;
        case 5: _t->onCoreSelected((*reinterpret_cast< QVariant(*)>(_a[1]))); break;
        case 6: _t->startEmulator(); break;
        case 7: _t->findDevices(); break;
        case 8: _t->discoverController((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->updateOptions((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 10: _t->OrientationHack(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData RetroArch::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RetroArch::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_RetroArch,
      qt_meta_data_RetroArch, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RetroArch::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RetroArch::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RetroArch::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RetroArch))
        return static_cast<void*>(const_cast< RetroArch*>(this));
    return QThread::qt_metacast(_clname);
}

int RetroArch::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = getRom(); break;
        case 1: *reinterpret_cast< QString*>(_v) = getCore(); break;
        case 2: *reinterpret_cast< QString*>(_v) = getRomExtensions(); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setRom(*reinterpret_cast< QString*>(_v)); break;
        case 1: setCore(*reinterpret_cast< QString*>(_v)); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void RetroArch::romChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void RetroArch::coreChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void RetroArch::romExtensionsChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
