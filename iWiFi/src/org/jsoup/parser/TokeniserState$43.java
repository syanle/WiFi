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
        characterreader.unconsume();
        it> it> = new t>();
        it>.s = true;
        it>..append(characterreader.consumeTo('>'));
        tokeniser.emit(it>);
        tokeniser.advanceTransition(Data);
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}