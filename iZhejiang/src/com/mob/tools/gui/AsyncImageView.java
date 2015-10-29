// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.UIHandler;
import java.util.Random;

// Referenced classes of package com.mob.tools.gui:
//            BitmapProcessor

public class AsyncImageView extends ImageView
    implements BitmapProcessor.BitmapCallback, android.os.Handler.Callback
{

    private static final int MSG_IMG_GOT = 1;
    private static final Random rnd = new Random();
    private Bitmap defaultBm;
    private int defaultRes;
    private float rect[];
    private boolean scaleToCrop;
    private String url;

    public AsyncImageView(Context context)
    {
        super(context);
        init(context);
    }

    public AsyncImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context);
    }

    public AsyncImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context);
    }

    private int[] getSize()
    {
        int i;
        int j;
label0:
        {
            int k = getWidth();
            int i1 = getHeight();
            if (k != 0)
            {
                i = i1;
                j = k;
                if (i1 != 0)
                {
                    break label0;
                }
            }
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            i = i1;
            j = k;
            if (layoutparams != null)
            {
                j = layoutparams.width;
                i = layoutparams.height;
            }
        }
        int l;
label1:
        {
            if (j != 0)
            {
                l = i;
                if (i != 0)
                {
                    break label1;
                }
            }
            measure(0, 0);
            j = getMeasuredWidth();
            l = getMeasuredHeight();
        }
        return (new int[] {
            j, l
        });
    }

    private Bitmap goCrop(Bitmap bitmap)
    {
        float f = bitmap.getWidth();
        float f1 = bitmap.getHeight();
        float f2;
        Object obj;
        if (f != 0.0F && f1 != 0.0F)
        {
            if ((obj = getSize())[0] != 0 && obj[1] != 0 && (f2 = ((float)obj[1] * f) / (float)obj[0]) != f1)
            {
                int ai[] = new int[4];
                if (f2 < f1)
                {
                    ai[1] = (int)((f1 - f2) / 2.0F);
                    ai[3] = ai[1];
                } else
                {
                    ai[0] = (int)((f - (f1 * (float)obj[0]) / (float)obj[1]) / 2.0F);
                    ai[2] = ai[0];
                }
                try
                {
                    obj = BitmapHelper.cropBitmap(bitmap, ai[0], ai[1], ai[2], ai[3]);
                }
                catch (Throwable throwable)
                {
                    Ln.w(throwable);
                    return bitmap;
                }
                return ((Bitmap) (obj));
            }
        }
        return bitmap;
    }

    private Bitmap goRound(Bitmap bitmap)
    {
        Bitmap bitmap1;
        try
        {
            int ai[] = getSize();
            bitmap1 = BitmapHelper.roundBitmap(bitmap, ai[0], ai[1], rect[0], rect[1], rect[2], rect[3]);
        }
        catch (Throwable throwable)
        {
            Ln.w(throwable);
            return bitmap;
        }
        return bitmap1;
    }

    private void init(Context context)
    {
        if (isInEditMode())
        {
            setBackgroundColor(0xff000000);
            return;
        } else
        {
            BitmapProcessor.prepare(context);
            return;
        }
    }

    public void execute(String s, int i)
    {
        Ln.d("AsyncImageView, %s", new Object[] {
            s
        });
        url = s;
        defaultRes = i;
        if (TextUtils.isEmpty(s))
        {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = BitmapProcessor.getBitmapFromCache(s);
        if (bitmap != null && !bitmap.isRecycled())
        {
            setBitmap(bitmap);
            return;
        }
        if (i > 0)
        {
            setImageResource(i);
        }
        Ln.w("BitmapProcessor, %s", new Object[] {
            s
        });
        BitmapProcessor.process(s, this);
    }

    public void execute(String s, Bitmap bitmap)
    {
        Ln.d("AsyncImageView, %s", new Object[] {
            s
        });
        url = s;
        defaultBm = bitmap;
        if (TextUtils.isEmpty(s))
        {
            setImageBitmap(bitmap);
            return;
        }
        Bitmap bitmap1 = BitmapProcessor.getBitmapFromCache(s);
        if (bitmap1 != null && !bitmap1.isRecycled())
        {
            setBitmap(bitmap1);
            return;
        }
        if (bitmap != null && !bitmap.isRecycled())
        {
            setImageBitmap(bitmap);
        }
        Ln.w("BitmapProcessor, %s", new Object[] {
            s
        });
        BitmapProcessor.process(s, this);
    }

    public boolean handleMessage(Message message)
    {
label0:
        {
            if (message.what == 1)
            {
                Object obj = ((Object[])(Object[])message.obj)[0];
                message = ((Message) (((Object[])(Object[])message.obj)[1]));
                if (message == null || obj == null || !obj.equals(url))
                {
                    break label0;
                }
                setImageBitmap((Bitmap)message);
            }
            return false;
        }
        if (defaultBm != null && !defaultBm.isRecycled())
        {
            setImageBitmap(defaultBm);
            return false;
        } else
        {
            setImageResource(defaultRes);
            return false;
        }
    }

    public void onImageGot(String s, Bitmap bitmap)
    {
        Object obj1 = null;
        Object obj = obj1;
        if (s != null)
        {
            obj = obj1;
            if (s.trim().length() > 0)
            {
                obj = obj1;
                if (s.equals(url))
                {
                    obj = bitmap;
                }
            }
        }
        bitmap = ((Bitmap) (obj));
        if (obj != null)
        {
            Bitmap bitmap1 = ((Bitmap) (obj));
            if (scaleToCrop)
            {
                bitmap1 = goCrop(((Bitmap) (obj)));
            }
            bitmap = bitmap1;
            if (rect != null)
            {
                bitmap = goRound(bitmap1);
            }
        }
        obj = new Message();
        obj.what = 1;
        obj.obj = ((Object) (new Object[] {
            s, bitmap
        }));
        UIHandler.sendMessageDelayed(((Message) (obj)), rnd.nextInt(300), this);
    }

    public void setBitmap(Bitmap bitmap)
    {
        Bitmap bitmap1 = bitmap;
        if (scaleToCrop)
        {
            bitmap1 = goCrop(bitmap);
        }
        bitmap = bitmap1;
        if (rect != null)
        {
            bitmap = goRound(bitmap1);
        }
        setImageBitmap(bitmap);
    }

    public void setRound(float f)
    {
        setRound(f, f, f, f);
    }

    public void setRound(float f, float f1, float f2, float f3)
    {
        rect = (new float[] {
            f, f1, f2, f3
        });
    }

    public void setScaleToCropCenter(boolean flag)
    {
        scaleToCrop = flag;
    }

}
