
#ifndef PORTING_HPP__
#define PORTING_HPP__

#include <ham/types.h>
#include <ham/hamsterdb_int.h> /* for DAM stuff */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <assert.h>

#ifdef WIN32
#  include <windows.h>
#else
#  include <unistd.h>
#  include <sys/time.h>
#  include <sys/utsname.h>
#endif



#if WIN32
#  define strcasecmp stricmp
#endif


#endif /* PORTING_HPP__ */
