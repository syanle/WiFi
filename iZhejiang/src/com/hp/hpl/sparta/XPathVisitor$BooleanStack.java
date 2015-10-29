// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.hp.hpl.sparta;


// Referenced classes of package com.hp.hpl.sparta:
//            XPathVisitor

private static class <init>
{
    private static class Item
    {

        final Boolean bool;
        final Item prev;

        Item(Boolean boolean1, Item item)
        {
            bool = boolean1;
            prev = item;
        }
    }


    private Item top_;

    Boolean pop()
    {
        Boolean boolean1 = top_.bool;
        top_ = top_.prev;
        return boolean1;
    }

    void push(Boolean boolean1)
    {
        top_ = new Item(boolean1, top_);
    }

    private Item.prev()
    {
        top_ = null;
    }

    top_(top_ top_1)
    {
        this();
    }
}
