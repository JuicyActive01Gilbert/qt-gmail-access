######################################################################
# Automatically generated by qmake (2.00a) sab 27. mag 00:38:16 2006
######################################################################

DEPENDPATH += . include
INCLUDEPATH += . include
TEMPLATE	=lib
CONFIG   += qt warn_off release staticlib
LANGUAGE	= C++
#DEFINES -= UNICODE
DEFINES += NDEBUG THREAD_SAFE=1 TEMP_STORE=2

DESTDIR	= ./
win32:TARGET	= tidy
unix:TARGET	= tidy
macx:TARGET	= tidy

QT += xml


# Input
HEADERS += access.h \
           attrdict.h \
           attrs.h \
           charsets.h \
           clean.h \
           config.h \
           entities.h \
           forward.h \
           iconvtc.h \
           lexer.h \
           message.h \
           parser.h \
           pprint.h \
           streamio.h \
           tags.h \
           tidy-int.h \
           tmbstr.h \
           utf8.h \
           version.h \
           win32tc.h \
           include/buffio.h \
           include/fileio.h \
           include/platform.h \
           include/tidy.h \
           include/tidyenum.h
SOURCES += access.c \
           alloc.c \
           attrask.c \
           attrdict.c \
           attrget.c \
           attrs.c \
           buffio.c \
           charsets.c \
           clean.c \
           config.c \
           entities.c \
           fileio.c \
           iconvtc.c \
           istack.c \
           lexer.c \
           localize.c \
           parser.c \
           pprint.c \
           streamio.c \
           tagask.c \
           tags.c \
           tidylib.c \
           tmbstr.c \
           utf8.c \
           win32tc.c
