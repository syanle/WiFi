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
            tokeniser.createTagPending(false);
            tokeniser.tagPending.gName(Character.toLowerCase(characterreader.current()));
            tokeniser.dataBuffer.append(characterreader.current());
            tokeniser.advanceTransition(ScriptDataEscapedEndTagName);
            return;
        } else
        {
            tokeniser.emit("</");
            tokeniser.transition(ScriptDataEscaped);
            return;
        }
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}
