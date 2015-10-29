// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.view.View;

// Referenced classes of package com.umeng.socialize.view:
//            CommentDetailNoMap

class p
    implements android.view.View.OnClickListener
{

    final CommentDetailNoMap a;

    p(CommentDetailNoMap commentdetailnomap)
    {
        a = commentdetailnomap;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
