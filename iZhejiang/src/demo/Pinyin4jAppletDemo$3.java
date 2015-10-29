// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package demo;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JComboBox;

// Referenced classes of package demo:
//            Pinyin4jAppletDemo

final class this._cls0
    implements ActionListener
{

    private final Pinyin4jAppletDemo this$0;

    public void actionPerformed(ActionEvent actionevent)
    {
        if (toneTypes[2] == (String)Pinyin4jAppletDemo.access$100(Pinyin4jAppletDemo.this).getSelectedItem())
        {
            Pinyin4jAppletDemo.access$200(Pinyin4jAppletDemo.this).setSelectedIndex(2);
            Pinyin4jAppletDemo.access$200(Pinyin4jAppletDemo.this).setEnabled(false);
            return;
        } else
        {
            Pinyin4jAppletDemo.access$200(Pinyin4jAppletDemo.this).setEnabled(true);
            return;
        }
    }

    ()
    {
        this$0 = Pinyin4jAppletDemo.this;
    }
}
