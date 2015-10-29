// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.view.MotionEvent;
import android.view.View;

final class bE
    implements android.view.TouchListener
{

    final View bD;
    final View bE;

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return false;

        case 0: // '\0'
            bD.setSelected(true);
            return false;

        case 1: // '\001'
        case 3: // '\003'
        case 4: // '\004'
            bD.setSelected(false);
            return false;

        case 2: // '\002'
            bD.setSelected(bE.isPressed());
            break;
        }
        return false;
    }

    (View view, View view1)
    {
        bD = view;
        bE = view1;
        super();
    }
}
