// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller.listener;

import com.tencent.tauth.UiError;
import org.json.JSONObject;

// Referenced classes of package com.umeng.socialize.controller.listener:
//            SocializeListeners

public static interface 
{

    public abstract void onCancel();

    public abstract void onComplete(JSONObject jsonobject);

    public abstract void onError(UiError uierror);
}
