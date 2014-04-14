/****************************************************************************
** Meta object code from reading C++ file 'ButtonMap.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/ButtonMap.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ButtonMap.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_ButtonMap[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      29,   15,   11,   10, 0x02,
      56,   15,   48,   10, 0x02,
      87,   80,   10,   10, 0x02,
     122,  109,   10,   10, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_ButtonMap[] = {
    "ButtonMap\0\0int\0player,button\0"
    "mapButton(int,int)\0QString\0"
    "buttonToString(int,int)\0player\0"
    "refreshButtonMap(int)\0index,player\0"
    "mapDevice(int,int)\0"
};

void ButtonMap::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ButtonMap *_t = static_cast<ButtonMap *>(_o);
        switch (_id) {
        case 0: { int _r = _t->mapButton((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        case 1: { QString _r = _t->buttonToString((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 2: _t->refreshButtonMap((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->mapDevice((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData ButtonMap::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject ButtonMap::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_ButtonMap,
      qt_meta_data_ButtonMap, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &ButtonMap::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *ButtonMap::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *ButtonMap::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_ButtonMap))
        return static_cast<void*>(const_cast< ButtonMap*>(this));
    return QObject::qt_metacast(_clname);
}

int ButtonMap::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
