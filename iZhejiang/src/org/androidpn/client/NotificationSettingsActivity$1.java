// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.preference.Preference;

// Referenced classes of package org.androidpn.client:
//            NotificationSettingsActivity

class this._cls0
    implements android.preference.stener
{

    final NotificationSettingsActivity this$0;

    public boolean onPreferenceChange(Preference preference, Object obj)
    {
        if (Boolean.valueOf(obj.toString()).booleanValue())
        {
            preference.setTitle("Notifications Enabled");
        } else
        {
            preference.setTitle("Notifications Disabled");
        }
        return true;
    }

    ener()
    {
        this$0 = NotificationSettingsActivity.this;
        super();
    }
}
