// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.open;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.tencent.open:
//            TaskGuide

class createChildView extends LinearLayout
{

    private Button rewardButton;
    private rewardButton stepInfo;
    private TextView taskTextView;
    final TaskGuide this$0;

    private void createChildView()
    {
        taskTextView = new TextView(TaskGuide.access$1700(TaskGuide.this));
        taskTextView.setTextColor(Color.rgb(255, 255, 255));
        taskTextView.setTextSize(15F);
        taskTextView.setShadowLayer(1.0F, 1.0F, 1.0F, Color.rgb(242, 211, 199));
        taskTextView.setGravity(3);
        taskTextView.setEllipsize(android.text.out.taskTextView);
        taskTextView.setIncludeFontPadding(false);
        taskTextView.setSingleLine(true);
        android.widget.t t = new android.widget.init>(0, -2);
        t.eight = 1.0F;
        t.eftMargin = TaskGuide.access$1800(TaskGuide.this, 4);
        addView(taskTextView, t);
        rewardButton = new Button(TaskGuide.access$1900(TaskGuide.this));
        rewardButton.setPadding(0, 0, 0, 0);
        rewardButton.setTextSize(16F);
        rewardButton.setTextColor(Color.rgb(255, 255, 255));
        rewardButton.setShadowLayer(1.0F, 1.0F, 1.0F, Color.rgb(242, 211, 199));
        rewardButton.setIncludeFontPadding(false);
        rewardButton.setOnClickListener(new ener(TaskGuide.this, stepInfo.er));
        t = new android.widget.init>(TaskGuide.access$1800(TaskGuide.this, TaskGuide.access$2000()), TaskGuide.access$1800(TaskGuide.this, TaskGuide.access$2100()));
        t.eftMargin = TaskGuide.access$1800(TaskGuide.this, 2);
        t.ightMargin = TaskGuide.access$1800(TaskGuide.this, 8);
        addView(rewardButton, t);
    }

    public void setStepInfo(rewardButton rewardbutton)
    {
        stepInfo = rewardbutton;
    }

    public void updateView(stepInfo stepinfo)
    {
        if (!TextUtils.isEmpty(stepInfo.))
        {
            taskTextView.setText(stepInfo.);
        }
        tencent.open.TaskGuide.TaskState[stepinfo.()];
        JVM INSTR tableswitch 1 4: default 64
    //                   1 65
    //                   2 74
    //                   3 195
    //                   4 213;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return;
_L2:
        rewardButton.setEnabled(false);
        return;
_L3:
        if (stepInfo.stepInfo == 1)
        {
            rewardButton.setText(stepInfo.);
            rewardButton.setBackgroundDrawable(null);
            rewardButton.setTextColor(Color.rgb(255, 246, 0));
            rewardButton.setEnabled(false);
            return;
        }
        if (stepInfo.stepInfo == 2)
        {
            rewardButton.setText("\u9886\u53D6\u5956\u52B1");
            rewardButton.setTextColor(Color.rgb(255, 255, 255));
            rewardButton.setBackgroundDrawable(TaskGuide.access$2200(TaskGuide.this));
            rewardButton.setEnabled(true);
            return;
        }
          goto _L1
_L4:
        rewardButton.setText("\u9886\u53D6\u4E2D...");
        rewardButton.setEnabled(false);
        return;
_L5:
        rewardButton.setText("\u5DF2\u9886\u53D6");
        rewardButton.setBackgroundDrawable(TaskGuide.access$2300(TaskGuide.this));
        rewardButton.setEnabled(false);
        return;
    }

    public ener(Context context, ener ener)
    {
        this$0 = TaskGuide.this;
        super(context);
        stepInfo = ener;
        setOrientation(0);
        createChildView();
    }
}
