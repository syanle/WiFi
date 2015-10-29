// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view.map;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.google.android.maps.ItemizedOverlay;
import com.google.android.maps.OverlayItem;
import java.util.ArrayList;
import java.util.List;

public class UItemizedOverlay extends ItemizedOverlay
{

    private Context mContext;
    private List mOverlays;

    public UItemizedOverlay(Drawable drawable, Context context)
    {
        super(boundCenterBottom(drawable));
        mOverlays = new ArrayList();
        mContext = context;
    }

    public void addOverlay(OverlayItem overlayitem)
    {
        mOverlays.add(overlayitem);
        populate();
    }

    protected OverlayItem createItem(int i)
    {
        return (OverlayItem)mOverlays.get(i);
    }

    protected boolean onTap(int i)
    {
        OverlayItem overlayitem = (OverlayItem)mOverlays.get(i);
        return true;
    }

    public int size()
    {
        return mOverlays.size();
    }
}
