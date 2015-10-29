// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.pulltorefresh;


// Referenced classes of package m.framework.ui.widget.pulltorefresh:
//            OnScrollListener, ScrollableGroupListView, Scrollable

class this._cls0
    implements OnScrollListener
{

    final ScrollableGroupListView this$0;

    public void onScrollChanged(Scrollable scrollable, int i, int j, int k, int l)
    {
        scrollable = ScrollableGroupListView.this;
        boolean flag;
        if (j <= 0 && l <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ScrollableGroupListView.access$0(scrollable, flag);
    }

    ()
    {
        this$0 = ScrollableGroupListView.this;
        super();
    }
}
