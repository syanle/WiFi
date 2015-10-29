// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package demo;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

// Referenced classes of package demo:
//            Pinyin4jAppletDemo

final class val.appletDemo extends WindowAdapter
{

    private final Pinyin4jAppletDemo val$appletDemo;

    public void windowClosing(WindowEvent windowevent)
    {
        val$appletDemo.stop();
        val$appletDemo.destroy();
        System.exit(0);
    }

    ()
    {
        val$appletDemo = pinyin4jappletdemo;
    }
}
