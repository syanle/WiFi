// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import java.util.LinkedList;
import java.util.List;

public class PhoneStatusWatcher
{
    public static interface PhoneCallListener
    {

        public abstract void onPhoneCall(int i);
    }


    private static boolean aD;
    private TelephonyManager aE;
    private PhoneStateListener aF;
    private List aG;

    public PhoneStatusWatcher()
    {
        aG = new LinkedList();
    }

    static List a(PhoneStatusWatcher phonestatuswatcher)
    {
        return phonestatuswatcher.aG;
    }

    static boolean a(boolean flag)
    {
        aD = flag;
        return flag;
    }

    public static boolean isCalling()
    {
        return aD;
    }

    public void addPhoneCallListener(PhoneCallListener phonecalllistener)
    {
        aG.add(phonecalllistener);
    }

    public void begin(Context context)
    {
        if (aE == null)
        {
            aE = (TelephonyManager)context.getSystemService("phone");
        }
        if (aF == null)
        {
            aF = new _cls1();
        }
        aE.listen(aF, 32);
    }

    public void clearPhoneCallListener()
    {
        aG.clear();
    }

    public void end()
    {
        if (aE != null)
        {
            aE.listen(aF, 0);
            aF = null;
        }
    }

    public void removePhoneCallListener(PhoneCallListener phonecalllistener)
    {
        aG.remove(phonecalllistener);
    }

    private class _cls1 extends PhoneStateListener
    {

        final PhoneStatusWatcher aH;

        public void onCallStateChanged(int i, String s)
        {
            for (Iterator iterator = PhoneStatusWatcher.a(aH).iterator(); iterator.hasNext(); ((PhoneCallListener)iterator.next()).onPhoneCall(i)) { }
            super.onCallStateChanged(i, s);
            switch (i)
            {
            default:
                return;

            case 0: // '\0'
                PhoneStatusWatcher.a(false);
                return;

            case 1: // '\001'
            case 2: // '\002'
                PhoneStatusWatcher.a(true);
                break;
            }
        }

        _cls1()
        {
            aH = PhoneStatusWatcher.this;
            super();
        }
    }

}
