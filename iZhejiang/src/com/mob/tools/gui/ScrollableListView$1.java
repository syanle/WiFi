// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;


// Referenced classes of package com.mob.tools.gui:
//            ScrollableListView, Scrollable

class this._cls0
    implements stener
{

    final ScrollableListView this$0;

    public void onScrollChanged(Scrollable scrollable, int i, int j, int k, int l)
    {
        scrollable = ScrollableListView.this;
        boolean flag;
        if (j <= 0 && l <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ScrollableListView.access$002(scrollable, flag);
    }

    stener()
    {
        this$0 = ScrollableListView.this;
        super();
    }
}
