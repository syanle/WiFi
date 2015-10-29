// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comapi.map;

import android.os.Message;

// Referenced classes of package com.baidu.platform.comapi.map:
//            u

class v
{

    private static final String a = com/baidu/platform/comapi/map/v.getSimpleName();
    private u b;

    v()
    {
    }

    void a(Message message)
    {
        if (message.what == 65289)
        {
            switch (message.arg1)
            {
            default:
                return;

            case -1: 
            case 0: // '\0'
            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
            case 9: // '\t'
            case 10: // '\n'
            case 12: // '\f'
            case 101: // 'e'
            case 102: // 'f'
                break;
            }
            if (b != null)
            {
                b.a(message.arg1, message.arg2);
                return;
            }
        }
    }

    void a(u u1)
    {
        b = u1;
    }

    void b(u u1)
    {
        b = null;
    }

}
