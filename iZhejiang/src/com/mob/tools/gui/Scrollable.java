// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;


public interface Scrollable
{
    public static interface OnScrollListener
    {

        public abstract void onScrollChanged(Scrollable scrollable, int i, int j, int k, int l);
    }

}
