// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.wifi_core.core.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import java.util.ArrayList;

public class ScrollTextView extends TextView
{

    public static final long performUpScrollStateDistance = 5L;
    float absloutHeight;
    float currentY;
    int delayTime;
    public float distanceX;
    public float distanceY;
    private int exactlyHeight;
    private int exactlyWidth;
    Handler handler;
    float lastY;
    ArrayList lineStrings;
    boolean needStop;
    String scrollText;
    boolean scrolling;
    float speed;

    public ScrollTextView(Context context)
    {
        super(context);
        scrollText = "";
        exactlyWidth = -1;
        exactlyHeight = -1;
        scrolling = false;
        absloutHeight = 0.0F;
        delayTime = 10;
        speed = 0.5F;
        lastY = 0.0F;
        distanceY = 0.0F;
        distanceX = 0.0F;
        init();
    }

    public ScrollTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        scrollText = "";
        exactlyWidth = -1;
        exactlyHeight = -1;
        scrolling = false;
        absloutHeight = 0.0F;
        delayTime = 10;
        speed = 0.5F;
        lastY = 0.0F;
        distanceY = 0.0F;
        distanceX = 0.0F;
        init();
    }

    public ScrollTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        scrollText = "";
        exactlyWidth = -1;
        exactlyHeight = -1;
        scrolling = false;
        absloutHeight = 0.0F;
        delayTime = 10;
        speed = 0.5F;
        lastY = 0.0F;
        distanceY = 0.0F;
        distanceX = 0.0F;
        init();
    }

    public ScrollTextView(Context context, String s)
    {
        super(context);
        scrollText = "";
        exactlyWidth = -1;
        exactlyHeight = -1;
        scrolling = false;
        absloutHeight = 0.0F;
        delayTime = 10;
        speed = 0.5F;
        lastY = 0.0F;
        distanceY = 0.0F;
        distanceX = 0.0F;
        scrollText = s;
        init();
    }

    private int MeasureHeight(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        j = android.view.View.MeasureSpec.getSize(j);
        generateTextList(i);
        i = lineStrings.size();
        absloutHeight = getLineHeight() * i + getPaddingBottom() + getPaddingTop();
        if (k == 0x80000000)
        {
            i = (int)Math.min(absloutHeight, j);
            exactlyHeight = -1;
        } else
        {
            i = j;
            if (k == 0x40000000)
            {
                exactlyHeight = j;
                return j;
            }
        }
        return i;
    }

    private int MeasureWidth(int i)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int j = android.view.View.MeasureSpec.getSize(i);
        i = j;
        if (k == 0x80000000)
        {
            i = Math.min((int)Math.rint(getPaint().measureText(scrollText)), j);
            exactlyWidth = -1;
        }
        if (k == 0x40000000)
        {
            exactlyWidth = i;
        }
        return i;
    }

    private String getLineText(int i, String s)
    {
        StringBuffer stringbuffer;
        StringBuffer stringbuffer1;
        int j;
        stringbuffer = new StringBuffer();
        stringbuffer1 = new StringBuffer();
        j = 0;
_L5:
        if (j < s.length()) goto _L2; else goto _L1
_L1:
        return stringbuffer.toString();
_L2:
        char c = s.charAt(j);
        String s1;
        if (!isChinese(c) && isENWordStart(s, j))
        {
            int k = getNextSpecePlace(j, s);
            if (k > -1)
            {
                s1 = (new StringBuilder(String.valueOf(s.substring(j, k)))).append(" ").toString();
                String s2;
                if (getPaint().measureText(s1) > (float)i)
                {
                    s1 = (new StringBuilder()).append(c).toString();
                } else
                {
                    j = k;
                }
            } else
            {
                s1 = (new StringBuilder()).append(c).toString();
            }
        } else
        {
            s1 = (new StringBuilder()).append(c).toString();
        }
        stringbuffer1.append(s1);
        s2 = stringbuffer1.toString();
        if (getPaint().measureText(s2.toString()) > (float)i) goto _L1; else goto _L3
_L3:
        stringbuffer.append(s1);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static final boolean isChinese(char c)
    {
        Character.UnicodeBlock unicodeblock = Character.UnicodeBlock.of(c);
        return unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.GENERAL_PUNCTUATION || unicodeblock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeblock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }

    private void reset()
    {
        requestLayout();
        invalidate();
        currentY = 0.0F;
    }

    public void cal()
    {
        generateTextList(80);
        int i = lineStrings.size();
        absloutHeight = getLineHeight() * i + getPaddingBottom() + getPaddingTop();
        currentY = 0.0F;
        if ((float)40 < absloutHeight)
        {
            play();
            return;
        } else
        {
            stop();
            return;
        }
    }

    public void generateTextList(int i)
    {
        lineStrings = new ArrayList();
        String s = scrollText;
        do
        {
            if (s.equals(""))
            {
                return;
            }
            String s1 = getLineText(i, s);
            lineStrings.add(s1);
            s = s.substring(s1.length(), s.length());
        } while (true);
    }

    int getNextSpecePlace(int i, String s)
    {
_L6:
        if (i < s.length()) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        j = i;
        if (s.charAt(i) == ' ') goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String getScrollText()
    {
        return scrollText;
    }

    public void goOn()
    {
        if (needStop)
        {
            play();
            needStop = false;
        }
    }

    void init()
    {
        cal();
        handler = new Handler() {

            final ScrollTextView this$0;

            private void resetCurrentY()
            {
                if (currentY >= absloutHeight || currentY <= -absloutHeight || getHeight() <= 0)
                {
                    currentY = 0.0F;
                }
            }

            public void handleMessage(Message message)
            {
                if (absloutHeight <= (float)getHeight())
                {
                    currentY = 0.0F;
                    stop();
                    return;
                }
                ScrollTextView scrolltextview;
                switch (message.what)
                {
                default:
                    return;

                case 0: // '\0'
                    message = ScrollTextView.this;
                    message.currentY = ((ScrollTextView) (message)).currentY - speed;
                    resetCurrentY();
                    invalidate();
                    handler.sendEmptyMessageDelayed(0, delayTime);
                    return;

                case 1: // '\001'
                    scrolltextview = ScrollTextView.this;
                    break;
                }
                scrolltextview.currentY = scrolltextview.currentY + (float)message.arg1;
                resetCurrentY();
                invalidate();
            }

            
            {
                this$0 = ScrollTextView.this;
                super();
            }
        };
    }

    boolean isENWordStart(String s, int i)
    {
        while (i == 0 || s.charAt(i - 1) == ' ') 
        {
            return true;
        }
        return false;
    }

    protected void onDraw(Canvas canvas)
    {
        float f4;
        float f5;
        float f6;
        int i;
        super.onDraw(canvas);
        f4 = getPaddingLeft();
        float f = getPaddingTop();
        f5 = getLineHeight();
        f6 = getPaint().getTextSize();
        i = 0;
_L2:
        float f1;
        float f2;
        float f3;
        if (i >= lineStrings.size())
        {
            return;
        }
        f3 = (float)i * f5 + f6 + currentY;
        f2 = 0.0F;
        if (exactlyHeight > -1)
        {
            f2 = Math.min(0.0F, (float)exactlyHeight - absloutHeight);
        }
        if (f3 >= f2)
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = f3 + absloutHeight;
_L3:
        f2 = f1;
        if (f1 >= absloutHeight)
        {
            canvas.drawText((String)lineStrings.get(i), f4, f1, getPaint());
            f2 = f1 - absloutHeight;
        }
        canvas.drawText((String)lineStrings.get(i), f4, f2, getPaint());
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        f1 = f3;
        if (f3 >= f2)
        {
            f1 = f3;
            if (f3 < f6 + f2)
            {
                canvas.drawText((String)lineStrings.get(i), f4, absloutHeight + f3, getPaint());
                f1 = f3;
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected void onMeasure(int i, int j)
    {
        i = MeasureWidth(i);
        j = MeasureHeight(i, j);
        setMeasuredDimension(i, j);
        currentY = 0.0F;
        if ((float)j < absloutHeight)
        {
            play();
            return;
        } else
        {
            stop();
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 46
    //                   1 121
    //                   2 75
    //                   3 121;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        flag = super.onTouchEvent(motionevent);
_L6:
        return flag;
_L2:
        float f = motionevent.getY();
        lastY = f;
        distanceY = f;
        distanceX = motionevent.getX();
        pause();
        return true;
_L4:
        float f1 = motionevent.getY();
        float f3 = lastY;
        lastY = motionevent.getY();
        motionevent = Message.obtain();
        motionevent.what = 1;
        motionevent.arg1 = (int)(f1 - f3);
        handler.sendMessage(motionevent);
        return true;
_L3:
        goOn();
        float f2 = motionevent.getY() - distanceY;
        float f4 = motionevent.getX() - distanceX;
        if (Math.sqrt(f2 * f2 + f4 * f4) < 5D)
        {
            updateScrollStatus();
            return true;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void pause()
    {
        if (scrolling)
        {
            stop();
            needStop = true;
        }
    }

    public void play()
    {
        if (!scrolling)
        {
            handler.sendEmptyMessage(0);
            scrolling = true;
        }
    }

    public void setScrollText(String s)
    {
        scrollText = s;
        reset();
    }

    public void stop()
    {
        if (scrolling)
        {
            handler.removeMessages(0);
            scrolling = false;
        }
    }

    public void updateScrollStatus()
    {
        if (scrolling)
        {
            stop();
            return;
        } else
        {
            play();
            return;
        }
    }
}
