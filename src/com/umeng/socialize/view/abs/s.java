// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.abs;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.umeng.socialize.common.SocializeUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

// Referenced classes of package com.umeng.socialize.view.abs:
//            u, v, w, t

public abstract class s extends Activity
{

    protected static final int i = 0xff00f01;
    protected static final int j = 0xff00f02;
    private byte a[];
    private Bitmap b;
    private android.view.View.OnClickListener c;

    public s()
    {
    }

    static void a(s s1)
    {
        s1.b();
    }

    private void b()
    {
        (new android.app.AlertDialog.Builder(this)).setMessage("\u662F\u5426\u5220\u9664\u4E0A\u4F20\u7684\u56FE\u7247\uFF1F").setCancelable(false).setPositiveButton("\u662F", new u(this)).setNegativeButton("\u5426", new v(this)).create().show();
    }

    static void b(s s1)
    {
        s1.c();
    }

    private void c()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        w w1 = new w(this);
        builder.setItems(new CharSequence[] {
            "\u76F8\u518C\u56FE\u7247", "\u76F8\u673A\u62CD\u6444"
        }, w1);
        builder.create().show();
    }

    protected abstract void a();

    protected abstract void a(Bitmap bitmap);

    protected void e()
    {
        setImageBytes(null);
        if (getPreviewImg() != null)
        {
            getPreviewImg().recycle();
        }
        a();
    }

    public byte[] getImageBytes()
    {
        return a;
    }

    public Bitmap getPreviewImg()
    {
        return b;
    }

    public android.view.View.OnClickListener getReceiveImageClick()
    {
        return c;
    }

    protected void onActivityResult(int k, int l, Intent intent)
    {
        if (0xff00f01 != k || intent == null || intent.getData() == null) goto _L2; else goto _L1
_L1:
        setImageBytes(SocializeUtils.getImageBytesFromUri(this, intent.getData()));
        if (getImageBytes() != null && getImageBytes().length > 0)
        {
            intent = new android.graphics.BitmapFactory.Options();
            intent.inSampleSize = 4;
            setPreviewImg(BitmapFactory.decodeByteArray(getImageBytes(), 0, getImageBytes().length, intent));
        }
_L4:
        a(getPreviewImg());
        return;
_L2:
        if (0xff00f02 != k || intent == null || intent.getData() == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        ByteArrayOutputStream bytearrayoutputstream;
        setPreviewImg((Bitmap)intent.getExtras().get("data"));
        bytearrayoutputstream = new ByteArrayOutputStream();
        getPreviewImg().compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bytearrayoutputstream);
        setImageBytes(bytearrayoutputstream.toByteArray());
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Intent intent) { }
        }
        if (true) goto _L4; else goto _L3
_L3:
        intent;
        bytearrayoutputstream = null;
_L6:
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw intent;
        intent;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = new t(this);
    }

    public void setImageBytes(byte abyte0[])
    {
        a = abyte0;
    }

    public void setPreviewImg(Bitmap bitmap)
    {
        b = bitmap;
    }
}
