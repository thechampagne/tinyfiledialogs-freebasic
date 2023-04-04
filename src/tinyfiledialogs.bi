/'
 ' zlib License
 ' 
 ' (C) 2032 XXIV
 ' 
 ' This software is provided 'as-is', without any express or implied
 ' warranty.  In no event will the authors be held liable for any damages
 ' arising from the use of this software.
 ' 
 ' Permission is granted to anyone to use this software for any purpose,
 ' including commercial applications, and to alter it and redistribute it
 ' freely, subject to the following restrictions:
 ' 
 ' 1. The origin of this software must not be misrepresented; you must not
 '    claim that you wrote the original software. If you use this software
 '    in a product, an acknowledgment in the product documentation would be
 '    appreciated but is not required.
 ' 2. Altered source versions must be plainly marked as such, and must not be
 '    misrepresented as being the original software.
 ' 3. This notice may not be removed or altered from any source distribution.
 '/
#ifndef __TINYFILEDIALOGS_BI__
#define __TINYFILEDIALOGS_BI__

extern "C"

#ifdef __FB_WIN32__
    extern tinyfd_winUtf8 as long
    declare function tinyfd_utf8toMbcs(byval aUtf8string as const zstring ptr) as zstring ptr
    declare function tinyfd_utf16toMbcs(byval aUtf16string as const wstring ptr) as zstring ptr
    declare function tinyfd_mbcsTo16(byval aMbcsString as const zstring ptr) as wstring ptr
    declare function tinyfd_mbcsTo8(byval aMbcsString as const zstring ptr) as zstring ptr
    declare function tinyfd_utf8to16(byval aUtf8string as const zstring ptr) as wstring ptr
    declare function tinyfd_utf16to8(byval aUtf16string as const wstring ptr) as zstring ptr
    declare function tinyfd_notifyPopupW(byval aTitle as const wstring ptr, byval aMessage as const wstring ptr, byval aIconType as const wstring ptr) as long
    declare function tinyfd_messageBoxW(byval aTitle as const wstring ptr, byval aMessage as const wstring ptr, byval aDialogType as const wstring ptr, byval aIconType as const wstring ptr, byval aDefaultButton as long) as long
    declare function tinyfd_inputBoxW(byval aTitle as const wstring ptr, byval aMessage as const wstring ptr, byval aDefaultInput as const wstring ptr) as wstring ptr
    declare function tinyfd_saveFileDialogW(byval aTitle as const wstring ptr, byval aDefaultPathAndFile as const wstring ptr, byval aNumOfFilterPatterns as long, byval aFilterPatterns as const wstring const ptr ptr, byval aSingleFilterDescription as const wstring ptr) as wstring ptr
    declare function tinyfd_openFileDialogW(byval aTitle as const wstring ptr, byval aDefaultPathAndFile as const wstring ptr, byval aNumOfFilterPatterns as long, byval aFilterPatterns as const wstring const ptr ptr, byval aSingleFilterDescription as const wstring ptr, byval aAllowMultipleSelects as long) as wstring ptr
    declare function tinyfd_selectFolderDialogW(byval aTitle as const wstring ptr, byval aDefaultPath as const wstring ptr) as wstring ptr
    declare function tinyfd_colorChooserW(byval aTitle as const wstring ptr, byval aDefaultHexRGB as const wstring ptr, byval aDefaultRGB as const ubyte ptr, byval aoResultRGB as ubyte ptr) as wstring ptr
#endif

declare function tinyfd_getGlobalChar(byval aCharVariableName as const zstring ptr) as const zstring ptr
declare function tinyfd_getGlobalInt(byval aIntVariableName as const zstring ptr) as long
declare function tinyfd_setGlobalInt(byval aIntVariableName as const zstring ptr, byval aValue as long) as long

extern tinyfd_version as zstring * 8
extern tinyfd_needs as zstring ptr
extern tinyfd_verbose as long
extern tinyfd_silent as long
extern tinyfd_allowCursesDialogs as long
extern tinyfd_forceConsole as long
extern tinyfd_assumeGraphicDisplay as long
extern tinyfd_response as zstring * 1024

declare sub tinyfd_beep()
declare function tinyfd_notifyPopup(byval aTitle as const zstring ptr, byval aMessage as const zstring ptr, byval aIconType as const zstring ptr) as long
declare function tinyfd_messageBox(byval aTitle as const zstring ptr, byval aMessage as const zstring ptr, byval aDialogType as const zstring ptr, byval aIconType as const zstring ptr, byval aDefaultButton as long) as long
declare function tinyfd_inputBox(byval aTitle as const zstring ptr, byval aMessage as const zstring ptr, byval aDefaultInput as const zstring ptr) as zstring ptr
declare function tinyfd_saveFileDialog(byval aTitle as const zstring ptr, byval aDefaultPathAndFile as const zstring ptr, byval aNumOfFilterPatterns as long, byval aFilterPatterns as const zstring const ptr ptr, byval aSingleFilterDescription as const zstring ptr) as zstring ptr
declare function tinyfd_openFileDialog(byval aTitle as const zstring ptr, byval aDefaultPathAndFile as const zstring ptr, byval aNumOfFilterPatterns as long, byval aFilterPatterns as const zstring const ptr ptr, byval aSingleFilterDescription as const zstring ptr, byval aAllowMultipleSelects as long) as zstring ptr
declare function tinyfd_selectFolderDialog(byval aTitle as const zstring ptr, byval aDefaultPath as const zstring ptr) as zstring ptr
declare function tinyfd_colorChooser(byval aTitle as const zstring ptr, byval aDefaultHexRGB as const zstring ptr, byval aDefaultRGB as const ubyte ptr, byval aoResultRGB as ubyte ptr) as zstring ptr

#ifndef __FB_WIN32__
    declare function tinyfd_arrayDialog(byval aTitle as const zstring ptr, byval aNumOfColumns as long, byval aColumns as const zstring const ptr ptr, byval aNumOfRows as long, byval aCells as const zstring const ptr ptr) as zstring ptr
    declare function tinyfd_checklistDialog(byval aTitle as const zstring ptr, byval aNumOfOptions as long, byval aOptions as const zstring const ptr ptr) as zstring ptr
#endif

end extern

#endif '__TINYFILEDIALOGS_BI__
