// This is the SIP interface definition for QsciLexerSpice.
//
// Copyright (c) 2012 Riverbank Computing Limited <info@riverbankcomputing.com>
// 
// This file is part of QScintilla.
// 
// This file may be used under the terms of the GNU General Public
// License versions 2.0 or 3.0 as published by the Free Software
// Foundation and appearing in the files LICENSE.GPL2 and LICENSE.GPL3
// included in the packaging of this file.  Alternatively you may (at
// your option) use any later version of the GNU General Public
// License if such license has been publicly approved by Riverbank
// Computing Limited (or its successors, if any) and the KDE Free Qt
// Foundation. In addition, as a special exception, Riverbank gives you
// certain additional rights. These rights are described in the Riverbank
// GPL Exception version 1.1, which can be found in the file
// GPL_EXCEPTION.txt in this package.
// 
// If you are unsure which license is appropriate for your use, please
// contact the sales department at sales@riverbankcomputing.com.
// 
// This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
// WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.


class QsciLexerSpice : QsciLexer
{
%TypeHeaderCode
#include <Qsci/qscilexerspice.h>
%End

public:
    enum {
        Default,
        Identifier,
        Command,
        Function,
        Parameter,
        Number,
        Delimiter,
        Value,
        Comment
    };

%If (Qsci_Qt4)
    QsciLexerSpice(QObject *parent /TransferThis/ = 0);
%End
%If (!Qsci_Qt4)
    QsciLexerSpice(QObject *parent /TransferThis/ = 0, const char *name = 0);
%End

    virtual ~QsciLexerSpice();

    const char *language() const;
    const char *lexer() const;
    const char *keywords(int set) const;
    QColor defaultColor(int style) const;
    QFont defaultFont(int style) const;
    QString description(int style) const;

private:
    QsciLexerSpice(const QsciLexerSpice &);
};
