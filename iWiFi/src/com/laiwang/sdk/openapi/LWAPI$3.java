// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.laiwang.sdk.openapi;

import android.content.DialogInterface;
import com.laiwang.sdk.utils.LWAPIUtils;

// Referenced classes of package com.laiwang.sdk.openapi:
//            LWAPI

class 
    implements android.content.terface.OnClickListener
{

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        LWAPIUtils.invokeBrowser(LWAPI.getApplication(), "http://m.laiwang.com");
    }

    ()
    {
    }
}
