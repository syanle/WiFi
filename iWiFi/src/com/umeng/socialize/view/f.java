// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import com.umeng.socialize.bean.UMComment;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view:
//            h, CommentActivity, g

class f
    implements com.umeng.socialize.view.abs.BaseComentActivity.FetchDataListener
{

    final CommentActivity a;

    f(CommentActivity commentactivity)
    {
        a = commentactivity;
        super();
    }

    static CommentActivity a(f f1)
    {
        return f1.a;
    }

    public void a()
    {
        a.runOnUiThread(new h(this));
    }

    public void a(List list)
    {
        if (a.mCommentsData != null) goto _L2; else goto _L1
_L1:
        a.mCommentsData = list;
_L5:
        a.runOnUiThread(new g(this));
        return;
_L2:
        List list1 = a.mCommentsData;
        list1;
        JVM INSTR monitorenter ;
        if (list == null) goto _L4; else goto _L3
_L3:
        list = list.iterator();
_L6:
        if (list.hasNext())
        {
            break MISSING_BLOCK_LABEL_74;
        }
_L4:
        list1;
        JVM INSTR monitorexit ;
          goto _L5
        list;
        list1;
        JVM INSTR monitorexit ;
        throw list;
        UMComment umcomment = (UMComment)list.next();
        a.mCommentsData.add(umcomment);
          goto _L6
    }
}
