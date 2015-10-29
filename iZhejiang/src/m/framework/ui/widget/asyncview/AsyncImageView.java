// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Random;
import m.framework.utils.UIHandler;
import m.framework.utils.Utils;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            AsyncView, BitmapCallback, BitmapProcessor, SimpleOnImageGotListener, 
//            OnImageGotListener

public class AsyncImageView extends ImageView
    implements AsyncView, BitmapCallback, android.os.Handler.Callback
{

    public static final int DEFAULT_TRANSPARENT = 0x106000d;
    private static Bitmap DEFAULT_TRANSPARENT_BITMAP;
    private static final int MSG_IMG_GOT = 1;
    private static String cacheDir;
    private static final Random rnd = new Random();
    private int defaultRes;
    private OnImageGotListener onImageGotListener;
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

    private Bitmap getDefaultBitmap(int i)
    {
        switch (i)
        {
        default:
            return BitmapFactory.decodeResource(getResources(), i);

        case 17170445: 
            break;
        }
        if (DEFAULT_TRANSPARENT_BITMAP == null)
        {
            DEFAULT_TRANSPARENT_BITMAP = BitmapFactory.decodeResource(getResources(), 0x106000d);
        }
        return DEFAULT_TRANSPARENT_BITMAP;
    }

    private void init(Context context)
    {
        UIHandler.prepare();
        if (TextUtils.isEmpty(cacheDir))
        {
            cacheDir = Utils.getCachePath(getContext(), "images");
        }
        BitmapProcessor.prepare(cacheDir);
        setOnImageGotListener(SimpleOnImageGotListener.INSTANCE);
    }

    public void execute(String s)
    {
        execute(s, 0);
    }

    public void execute(String s, int i)
    {
        url = s;
        defaultRes = i;
        if (Utils.isNullOrEmpty(s))
        {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = BitmapProcessor.getBitmapFromCache(s);
        if (bitmap != null && !bitmap.isRecycled())
        {
            setImageBitmap(bitmap);
            return;
        }
        if (i > 0)
        {
            setImageBitmap(getDefaultBitmap(i));
        }
        BitmapProcessor.process(s, this);
    }

    public String getUrl()
    {
        return url;
    }

    public boolean handleMessage(Message message)
    {
label0:
        {
            if (message.what == 1)
            {
                Object obj = ((Object[])message.obj)[0];
                message = ((Message) (((Object[])message.obj)[1]));
                if (message == null || obj == null || !obj.equals(url))
                {
                    break label0;
                }
                setImageBitmap((Bitmap)message);
            }
            return false;
        }
        setImageResource(defaultRes);
        return false;
    }

    public void onImageGot(String s, Bitmap bitmap)
    {
        Object obj = bitmap;
        bitmap = ((Bitmap) (obj));
        if (onImageGotListener != null)
        {
            bitmap = onImageGotListener.onImageGot(this, ((Bitmap) (obj)), s);
        }
        obj = new Message();
        obj.what = 1;
        obj.obj = ((Object) (new Object[] {
            s, bitmap
        }));
        UIHandler.sendMessageDelayed(((Message) (obj)), rnd.nextInt(300), this);
    }

    public void setOnImageGotListener(OnImageGotListener onimagegotlistener)
    {
        onImageGotListener = onimagegotlistener;
    }

}
