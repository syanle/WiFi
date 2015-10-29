// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.plugin;

import android.net.Uri;

// Referenced classes of package com.tencent.mm.sdk.plugin:
//            BaseProfile

public class Profile extends BaseProfile
{

    public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/profile");
    protected static com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo bO = BaseProfile.initAutoDBInfo(com/tencent/mm/sdk/plugin/Profile);
    public static String columns[] = {
        "username", "bindqq", "bindmobile", "bindemail", "alias", "nickname", "signature", "province", "city", "weibo", 
        "avatar"
    };

    public Profile()
    {
    }

    protected com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo getDBInfo()
    {
        return bO;
    }

}
