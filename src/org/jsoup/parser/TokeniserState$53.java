// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.jsoup.parser;


// Referenced classes of package org.jsoup.parser:
//            TokeniserState, CharacterReader, Tokeniser

static final class it> extends TokeniserState
{

    void read(Tokeniser tokeniser, CharacterReader characterreader)
    {
        if (characterreader.matchesLetter())
        {
            characterreader = characterreader.consumeLetterSequence();
            tokeniser.doctypePending..append(characterreader.toLowerCase());
            return;
        }
        char c = characterreader.consume();
        switch (c)
        {
        default:
            tokeniser.doctypePending..append(c);
            return;

        case 62: // '>'
            tokeniser.emitDoctypePending();
            tokeniser.transition(Data);
            return;

        case 9: // '\t'
        case 10: // '\n'
        case 12: // '\f'
        case 13: // '\r'
        case 32: // ' '
            tokeniser.transition(AfterDoctypeName);
            return;

        case 0: // '\0'
            tokeniser.error(this);
            tokeniser.doctypePending..append('\uFFFD');
            return;

        case 65535: 
            tokeniser.eofError(this);
            break;
        }
        tokeniser.doctypePending.eQuirks = true;
        tokeniser.emitDoctypePending();
        tokeniser.transition(Data);
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}
