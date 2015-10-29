// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.view;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.pubinfo.wifi_core.AppBaseActivity;

public class Suggestion extends AppBaseActivity
{

    ImageButton refresh;
    Button refresh2;
    EditText suggestion_text;
    TextView titleTextView;

    public Suggestion()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030015);
        titleTextView = (TextView)findViewById(0x7f0c005a);
        suggestion_text = (EditText)findViewById(0x7f0c0057);
        refresh = (ImageButton)findViewById(0x7f0c005b);
        refresh.setVisibility(8);
        titleTextView.setText("\u610F\u89C1\u53CD\u9988");
        refresh2 = (Button)findViewById(0x7f0c005c);
        refresh2.setVisibility(0);
        refresh2.setBackgroundResource(0x7f02001c);
        refresh2.setText("\u63D0\u4EA4");
        refresh2.setOnClickListener(new android.view.View.OnClickListener() {

            final Suggestion this$0;

            public void onClick(View view)
            {
                if (suggestion_text.getText().toString().isEmpty())
                {
                    Toast.makeText(
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = Suggestion.this;
                super();
            }
        });
    }

}
