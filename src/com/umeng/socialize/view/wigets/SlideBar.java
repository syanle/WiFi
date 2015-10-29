// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.wigets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.umeng.socialize.bean.UMFriend;
import com.umeng.socialize.common.ResContainer;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.umeng.socialize.view.wigets:
//            b

public class SlideBar extends View
{

    private char mAlphabet[];
    private int mAlphabetHeight;
    private int mAlphabetSize;
    private HashMap mEnabledCharacter;
    private int mExistColor;
    private ListView mListView;
    private TextView mOverlay;
    private int mUnexistColor;

    public SlideBar(Context context)
    {
        super(context);
        mExistColor = Color.parseColor("#EEEEEE");
        mUnexistColor = Color.parseColor("#EEEEEE");
        init(context);
    }

    public SlideBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mExistColor = Color.parseColor("#EEEEEE");
        mUnexistColor = Color.parseColor("#EEEEEE");
        init(context);
    }

    public SlideBar(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mExistColor = Color.parseColor("#EEEEEE");
        mUnexistColor = Color.parseColor("#EEEEEE");
        init(context);
    }

    private int getGroupIndex(Character character)
    {
        return ((Integer)mEnabledCharacter.get(character)).intValue();
    }

    private void init(Context context)
    {
        mAlphabet = (new char[] {
            '\u5E38', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 
            'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 
            'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '\u7B26'
        });
        mAlphabetSize = (int)context.getResources().getDimension(ResContainer.getResourceId(context, com.umeng.socialize.common.ResContainer.ResType.DIMEN, "alphabet_size"));
    }

    private boolean isGroupExist(Character character)
    {
        if (mEnabledCharacter == null)
        {
            return false;
        } else
        {
            return mEnabledCharacter.containsKey(character);
        }
    }

    protected void onDraw(Canvas canvas)
    {
        float f;
        Paint paint;
        paint = new Paint();
        paint.setColor(0xffa6a9aa);
        paint.setTextSize(mAlphabetSize);
        paint.setAntiAlias(true);
        paint.setTextAlign(android.graphics.Paint.Align.CENTER);
        f = getMeasuredWidth() / 2;
        if (mAlphabet == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i < mAlphabet.length) goto _L3; else goto _L2
_L2:
        super.onDraw(canvas);
        return;
_L3:
        if (isGroupExist(Character.valueOf(mAlphabet[i])))
        {
            paint.setColor(mExistColor);
        } else
        {
            paint.setColor(mUnexistColor);
        }
        canvas.drawText(String.valueOf(mAlphabet[i]), f, mAlphabetHeight + mAlphabetHeight * i, paint);
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        Log.d("com.umeng.socialize", (new StringBuilder("onSizeChanged +")).append(j).toString());
        try
        {
            mAlphabetHeight = j / mAlphabet.length;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int j;
        super.onTouchEvent(motionevent);
        j = (int)motionevent.getY() / mAlphabetHeight;
        if (j < mAlphabet.length) goto _L2; else goto _L1
_L1:
        int i = mAlphabet.length - 1;
_L9:
        if (motionevent.getAction() != 0 && motionevent.getAction() != 2) goto _L4; else goto _L3
_L3:
        setPressed(true);
        mOverlay.setText(String.valueOf(mAlphabet[i]));
        if (mOverlay.getVisibility() != 0)
        {
            mOverlay.setVisibility(0);
        }
        if (isGroupExist(Character.valueOf(mAlphabet[i]))) goto _L6; else goto _L5
_L5:
        return true;
_L2:
        i = j;
        if (j < 0)
        {
            i = 0;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        mListView.setSelection(getGroupIndex(Character.valueOf(mAlphabet[i])));
_L4:
        if (motionevent.getAction() != 1) goto _L5; else goto _L7
_L7:
        setPressed(false);
        mOverlay.setVisibility(8);
        return true;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public void setListView(ListView listview)
    {
        mListView = listview;
        updateAlphabet(((b)mListView.getAdapter()).a());
    }

    public void setOverlay(TextView textview)
    {
        mOverlay = textview;
    }

    public void updateAlphabet(List list)
    {
        mEnabledCharacter = new HashMap();
        int j = list.size();
        int i = 0;
        do
        {
            if (i >= j)
            {
                invalidate();
                return;
            }
            char c = ((UMFriend)list.get(i)).upGroup();
            if (!mEnabledCharacter.containsKey(Character.valueOf(c)))
            {
                mEnabledCharacter.put(Character.valueOf(c), Integer.valueOf(i));
            }
            i++;
        } while (true);
    }
}
