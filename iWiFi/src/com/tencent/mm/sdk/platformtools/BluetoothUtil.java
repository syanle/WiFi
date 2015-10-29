// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.media.AudioManager;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            PhoneStatusWatcher

public class BluetoothUtil
{

    public BluetoothUtil()
    {
    }

    public static boolean startBluetooth(AudioManager audiomanager)
    {
        if (Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8)
        {
            if (!audiomanager.isBluetoothScoAvailableOffCall() || PhoneStatusWatcher.isCalling())
            {
                return false;
            } else
            {
                audiomanager.startBluetoothSco();
                audiomanager.setBluetoothScoOn(true);
                return true;
            }
        } else
        {
            return false;
        }
    }

    public static void stopBluetooth(AudioManager audiomanager)
    {
        if (Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 8 && !PhoneStatusWatcher.isCalling())
        {
            audiomanager.stopBluetoothSco();
        }
    }
}
