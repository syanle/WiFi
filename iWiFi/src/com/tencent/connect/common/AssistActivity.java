// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.connect.common;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.tencent.connect.common:
//            b

public class AssistActivity extends Activity
{

    static final boolean a;
    private static b b;

    public AssistActivity()
    {
    }

    public static void a(b b1)
    {
        b = b1;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (b != null)
        {
            b.onActivityResult(i, j, intent);
        }
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        if (!a && b == null)
        {
            throw new AssertionError();
        }
        if (b == null)
        {
            finish();
            return;
        } else
        {
            int i = b.getActivityIntent().getIntExtra("key_request_code", 0);
            startActivityForResult(b.getActivityIntent(), i);
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!com/tencent/connect/common/AssistActivity.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
