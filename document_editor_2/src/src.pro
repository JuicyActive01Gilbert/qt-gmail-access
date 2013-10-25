######################################################################
# Automatically generated by qmake (2.01a) Fr. Okt 25 09:56:53 2013
######################################################################

!include( ../config.pri ) {
message( "../config.pri not found" )
}



TEMPLATE = app
TARGET = OasisEdit
QT += core network xml gui
QT += widgets

DESTDIR += $$BUILD_TREE_PATH/bin
CONFIG   +=  qt release warn_off 
#CONFIG -= app_bundle # by test on console console release debug

CONFIG   -= debug

LIBS   += -lz
win32:LIBS	+= -luser32

macx {
RC_FILE = ODTicon.icns
QMAKE_INFO_PLIST = Info.plist
# QTPLUGIN     += qjpeg qgif qtiff
}



win32:RC_FILE = win.rc

### compiler default
LIB_EXTENSION = a  

win32-msvc*{
LIB_EXTENSION = lib
DEFINES += VISUALSTUDIOCC_
CONFIG += embed_manifest_exe 
message(win32 Visual Studio 2005 Compiler setting .......) 
}

win32-g++{
DEFINES += MINGWCC_
message(win32 MINGW Compiler setting ....................) 
}



lessThan(QT_VER_MAJ,5 | lessThan(QT_VER_MIN,0) ) {
DEFINES += _HAVING_NEW_TEXTDOCUMENT_	
QT += printsupport
DEFINES += _HAVEPRINTSUPPORTFLAG_
} else {

DEFINES += _QT4PRINTERSUPPORT_


lessThan(QT_VER_MAJ, 4) | lessThan(QT_VER_MIN, 5) {
### qt4.5 not make ! ##
error(OAsis OpenDocument write requires Qt 4.4.5 or newer. Version $$QT_VER_MAJ was detected.  Comment out error() src.pro to only read OAsis doc)
} else {
message(loading 4.5  ------- 4.5 _HAVING_NEW_TEXTDOCUMENT_  best QTextDocument on QT history )
DEFINES += _HAVING_NEW_TEXTDOCUMENT_
}



}

contains(CONFIG, static): {

       ######### on main.cpp use defined ########
       
       DEFINES += _COMPOSE_STATIC_
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqjpeg.$$LIB_EXTENSION) {
            QTPLUGIN += qjpeg
            DEFINES += _USE_qjpeg
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqgif.$$LIB_EXTENSION) {
            QTPLUGIN += qgif   
            DEFINES += _USE_qgif            
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqmng.$$LIB_EXTENSION) {
            QTPLUGIN += qmng   
            DEFINES += _USE_qmng            
        }
        exists($$[QT_INSTALL_PLUGINS]/imageformats/libqtiff.$$LIB_EXTENSION) {
            QTPLUGIN += qtiff   
            DEFINES += _USE_qtiff            
        }
}





DEPENDPATH += . tools docformat/ooo
INCLUDEPATH += . tools docformat/ooo

# Input
HEADERS += textedit.h \
           os_application.h  \
           tools/kzip.h \
           docformat/ooo/converter.h \
           docformat/ooo/document.h \
           docformat/ooo/formatproperty.h \
           docformat/ooo/styleinformation.h \
           docformat/ooo/styleparser.h
SOURCES += main.cpp \
           textedit.cpp \
           tools/kzip.cpp \
           docformat/ooo/converter.cpp \
           docformat/ooo/document.cpp \
           docformat/ooo/formatproperty.cpp \
           docformat/ooo/styleinformation.cpp \
           docformat/ooo/styleparser.cpp
RESOURCES += textedit.qrc


MOC_DIR = .moc
RCC_DIR = .rcc
OBJECTS_DIR = .obj