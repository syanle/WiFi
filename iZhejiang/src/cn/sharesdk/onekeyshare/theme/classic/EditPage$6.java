// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare.theme.classic;

import android.os.Message;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;

// Referenced classes of package cn.sharesdk.onekeyshare.theme.classic:
//            EditPage

class val.dp_9
    implements android.os.lback
{

    final EditPage this$0;
    private final int val$dp_24;
    private final int val$dp_9;
    private final int val$postSel;

    public boolean handleMessage(Message message)
    {
        ((HorizontalScrollView)EditPage.access$13(EditPage.this).getParent()).scrollTo(val$postSel * (val$dp_24 + val$dp_9), 0);
        return false;
    }

    ()
    {
        this$0 = final_editpage;
        val$postSel = i;
        val$dp_24 = j;
        val$dp_9 = I.this;
        super();
    }
}
