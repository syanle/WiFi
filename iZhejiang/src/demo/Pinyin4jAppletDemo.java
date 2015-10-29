// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package demo;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class Pinyin4jAppletDemo extends JApplet
{

    private static final Dimension APP_SIZE = new Dimension(600, 400);
    private static String appName = "pinyin4j-2.0.0 applet demo";
    private static final long serialVersionUID = 0xe525a1f6510b6c2eL;
    private JPanel buttonPanel;
    String caseTypes[] = {
        "LOWERCASE", "UPPERCASE"
    };
    private JComboBox caseTypesComboBox;
    private JLabel charLabel;
    private JTextField charTextField;
    private JButton convertButton;
    private JPanel formattedCharPanel;
    private JTextArea formattedOutputField;
    private JPanel jContentPane;
    private JTabbedPane jTabbedPane;
    private JPanel optionPanel;
    private JLabel toneLabel;
    String toneTypes[] = {
        "WITH_TONE_NUMBER", "WITHOUT_TONE", "WITH_TONE_MARK"
    };
    private JComboBox toneTypesComboBox;
    private JPanel unformattedCharPanel;
    private JLabel unformattedGwoyeuRomatzyhLabel;
    private JPanel unformattedGwoyeuRomatzyhPanel;
    private JScrollPane unformattedGwoyeuRomatzyhScrollPane;
    private JTextArea unformattedGwoyeuRomatzyhTextArea;
    private JLabel unformattedHanyuPinyinLabel;
    private JPanel unformattedHanyuPinyinPanel;
    private JScrollPane unformattedHanyuPinyinScrollPane;
    private JTextArea unformattedHanyuPinyinTextArea;
    private JLabel unformattedMPS2PinyinLabel;
    private JPanel unformattedMPS2PinyinPanel;
    private JScrollPane unformattedMPS2PinyinScrollPane;
    private JTextArea unformattedMPS2PinyinTextArea;
    private JLabel unformattedTongyongPinyinLabel;
    private JPanel unformattedTongyongPinyinPanel;
    private JScrollPane unformattedTongyongPinyinScrollPane;
    private JTextArea unformattedTongyongPinyinTextArea;
    private JLabel unformattedWadePinyinLabel;
    private JPanel unformattedWadePinyinPanel;
    private JScrollPane unformattedWadePinyinScrollPane;
    private JTextArea unformattedWadePinyinTextArea;
    private JLabel unformattedYalePinyinLabel;
    private JPanel unformattedYalePinyinPanel;
    private JScrollPane unformattedYalePinyinScrollPane;
    private JTextArea unformattedYalePinyinTextArea;
    String vCharTypes[] = {
        "WITH_U_AND_COLON", "WITH_V", "WITH_U_UNICODE"
    };
    private JComboBox vCharTypesComboBox;

    public Pinyin4jAppletDemo()
    {
        jContentPane = null;
        jTabbedPane = null;
        formattedCharPanel = null;
        optionPanel = null;
        convertButton = null;
        buttonPanel = null;
        formattedOutputField = null;
        toneTypesComboBox = null;
        vCharTypesComboBox = null;
        caseTypesComboBox = null;
        toneLabel = null;
        charLabel = null;
        charTextField = null;
        unformattedCharPanel = null;
        unformattedHanyuPinyinLabel = null;
        unformattedHanyuPinyinTextArea = null;
        unformattedHanyuPinyinPanel = null;
        unformattedTongyongPinyinPanel = null;
        unformattedTongyongPinyinLabel = null;
        unformattedTongyongPinyinTextArea = null;
        unformattedWadePinyinPanel = null;
        unformattedWadePinyinLabel = null;
        unformattedWadePinyinTextArea = null;
        unformattedMPS2PinyinPanel = null;
        unformattedMPS2PinyinLabel = null;
        unformattedMPS2PinyinTextArea = null;
        unformattedYalePinyinPanel = null;
        unformattedYalePinyinLabel = null;
        unformattedYalePinyinTextArea = null;
        unformattedGwoyeuRomatzyhPanel = null;
        unformattedGwoyeuRomatzyhLabel = null;
        unformattedGwoyeuRomatzyhTextArea = null;
        unformattedMPS2PinyinScrollPane = null;
        unformattedHanyuPinyinScrollPane = null;
        unformattedTongyongPinyinScrollPane = null;
        unformattedWadePinyinScrollPane = null;
        unformattedYalePinyinScrollPane = null;
        unformattedGwoyeuRomatzyhScrollPane = null;
        init();
    }

    private JPanel getButtonPanel()
    {
        if (buttonPanel == null)
        {
            buttonPanel = new JPanel();
            buttonPanel.add(getConvertButton(), null);
        }
        return buttonPanel;
    }

    private JComboBox getCaseTypesComboBox()
    {
        if (caseTypesComboBox == null)
        {
            caseTypesComboBox = new JComboBox(caseTypes);
        }
        return caseTypesComboBox;
    }

    private JTextField getCharTextField()
    {
        if (charTextField == null)
        {
            charTextField = new JTextField();
            charTextField.setFont(new Font("Dialog", 0, 12));
            charTextField.setText("\u548C");
            charTextField.setPreferredSize(new Dimension(26, 20));
        }
        return charTextField;
    }

    private String getChineseCharText()
    {
        return charTextField.getText();
    }

    private JButton getConvertButton()
    {
        if (convertButton == null)
        {
            convertButton = new JButton();
            convertButton.setText("Convert to Pinyin");
            convertButton.addActionListener(new _cls2());
        }
        return convertButton;
    }

    private JPanel getFormattedCharPanel()
    {
        if (formattedCharPanel == null)
        {
            formattedCharPanel = new JPanel();
            formattedCharPanel.setLayout(new BorderLayout());
            formattedCharPanel.add(getFormattedOutputField(), "Center");
        }
        return formattedCharPanel;
    }

    private JTextArea getFormattedOutputField()
    {
        if (formattedOutputField == null)
        {
            formattedOutputField = new JTextArea();
            formattedOutputField.setEditable(false);
        }
        return formattedOutputField;
    }

    private JPanel getJContentPane()
    {
        if (jContentPane == null)
        {
            jContentPane = new JPanel();
            jContentPane.setLayout(new BorderLayout());
            jContentPane.add(getJTabbedPane(), "Center");
            jContentPane.add(getOptionPanel(), "North");
            jContentPane.add(getButtonPanel(), "South");
        }
        return jContentPane;
    }

    private JTabbedPane getJTabbedPane()
    {
        if (jTabbedPane == null)
        {
            jTabbedPane = new JTabbedPane();
            jTabbedPane.addTab("Unformatted Chinese Romanization Systems", null, getUnformattedCharPanel(), null);
            jTabbedPane.addTab("Formatted Hanyu Pinyin", null, getFormattedCharPanel(), null);
        }
        return jTabbedPane;
    }

    private JPanel getOptionPanel()
    {
        if (optionPanel == null)
        {
            charLabel = new JLabel();
            charLabel.setText("Input Chinese:");
            toneLabel = new JLabel();
            toneLabel.setText(" Format:");
            optionPanel = new JPanel();
            optionPanel.setPreferredSize(new Dimension(640, 34));
            optionPanel.add(charLabel, null);
            optionPanel.add(getCharTextField(), null);
            optionPanel.add(toneLabel, null);
            optionPanel.add(getToneTypesComboBox(), null);
            optionPanel.add(getVCharTypesComboBox(), null);
            optionPanel.add(getCaseTypesComboBox(), null);
        }
        return optionPanel;
    }

    private JComboBox getToneTypesComboBox()
    {
        if (toneTypesComboBox == null)
        {
            toneTypesComboBox = new JComboBox(toneTypes);
            toneTypesComboBox.addActionListener(new _cls3());
        }
        return toneTypesComboBox;
    }

    private JPanel getUnformattedCharPanel()
    {
        if (unformattedCharPanel == null)
        {
            unformattedHanyuPinyinLabel = new JLabel();
            unformattedHanyuPinyinLabel.setText("Hanyu Pinyin");
            GridLayout gridlayout = new GridLayout();
            gridlayout.setRows(2);
            gridlayout.setHgap(1);
            gridlayout.setVgap(1);
            gridlayout.setColumns(3);
            unformattedCharPanel = new JPanel();
            unformattedCharPanel.setLayout(gridlayout);
            unformattedCharPanel.add(getUnformattedHanyuPinyinPanel(), null);
            unformattedCharPanel.add(getUnformattedTongyongPinyinPanel(), null);
            unformattedCharPanel.add(getUnformattedWadePinyinPanel(), null);
            unformattedCharPanel.add(getUnformattedMPS2PinyinPanel(), null);
            unformattedCharPanel.add(getUnformattedYalePinyinPanel(), null);
            unformattedCharPanel.add(getUnformattedGwoyeuRomatzyhPanel(), null);
        }
        return unformattedCharPanel;
    }

    private JPanel getUnformattedGwoyeuRomatzyhPanel()
    {
        if (unformattedGwoyeuRomatzyhPanel == null)
        {
            unformattedGwoyeuRomatzyhLabel = new JLabel();
            unformattedGwoyeuRomatzyhLabel.setText("Gwoyeu Romatzyh");
            unformattedGwoyeuRomatzyhPanel = new JPanel();
            unformattedGwoyeuRomatzyhPanel.setLayout(new BorderLayout());
            unformattedGwoyeuRomatzyhPanel.add(unformattedGwoyeuRomatzyhLabel, "North");
            unformattedGwoyeuRomatzyhPanel.add(getUnformattedGwoyeuRomatzyhScrollPane(), "Center");
        }
        return unformattedGwoyeuRomatzyhPanel;
    }

    private JScrollPane getUnformattedGwoyeuRomatzyhScrollPane()
    {
        if (unformattedGwoyeuRomatzyhScrollPane == null)
        {
            unformattedGwoyeuRomatzyhScrollPane = new JScrollPane();
            unformattedGwoyeuRomatzyhScrollPane.setViewportView(getUnformattedGwoyeuRomatzyhTextArea());
        }
        return unformattedGwoyeuRomatzyhScrollPane;
    }

    private JTextArea getUnformattedGwoyeuRomatzyhTextArea()
    {
        if (unformattedGwoyeuRomatzyhTextArea == null)
        {
            unformattedGwoyeuRomatzyhTextArea = new JTextArea();
            unformattedGwoyeuRomatzyhTextArea.setEditable(false);
            unformattedGwoyeuRomatzyhTextArea.setLineWrap(true);
        }
        return unformattedGwoyeuRomatzyhTextArea;
    }

    private JPanel getUnformattedHanyuPinyinPanel()
    {
        if (unformattedHanyuPinyinPanel == null)
        {
            unformattedHanyuPinyinPanel = new JPanel();
            unformattedHanyuPinyinPanel.setLayout(new BorderLayout());
            unformattedHanyuPinyinPanel.add(unformattedHanyuPinyinLabel, "North");
            unformattedHanyuPinyinPanel.add(getUnformattedHanyuPinyinScrollPane(), "Center");
        }
        return unformattedHanyuPinyinPanel;
    }

    private JScrollPane getUnformattedHanyuPinyinScrollPane()
    {
        if (unformattedHanyuPinyinScrollPane == null)
        {
            unformattedHanyuPinyinScrollPane = new JScrollPane();
            unformattedHanyuPinyinScrollPane.setViewportView(getUnformattedHanyuPinyinTextArea());
        }
        return unformattedHanyuPinyinScrollPane;
    }

    private JTextArea getUnformattedHanyuPinyinTextArea()
    {
        if (unformattedHanyuPinyinTextArea == null)
        {
            unformattedHanyuPinyinTextArea = new JTextArea();
            unformattedHanyuPinyinTextArea.setEditable(false);
            unformattedHanyuPinyinTextArea.setLineWrap(true);
        }
        return unformattedHanyuPinyinTextArea;
    }

    private JPanel getUnformattedMPS2PinyinPanel()
    {
        if (unformattedMPS2PinyinPanel == null)
        {
            unformattedMPS2PinyinLabel = new JLabel();
            unformattedMPS2PinyinLabel.setText("MPSII Pinyin");
            unformattedMPS2PinyinPanel = new JPanel();
            unformattedMPS2PinyinPanel.setLayout(new BorderLayout());
            unformattedMPS2PinyinPanel.add(unformattedMPS2PinyinLabel, "North");
            unformattedMPS2PinyinPanel.add(getUnformattedMPS2PinyinScrollPane(), "Center");
        }
        return unformattedMPS2PinyinPanel;
    }

    private JScrollPane getUnformattedMPS2PinyinScrollPane()
    {
        if (unformattedMPS2PinyinScrollPane == null)
        {
            unformattedMPS2PinyinScrollPane = new JScrollPane();
            unformattedMPS2PinyinScrollPane.setViewportView(getUnformattedMPS2PinyinTextArea());
        }
        return unformattedMPS2PinyinScrollPane;
    }

    private JTextArea getUnformattedMPS2PinyinTextArea()
    {
        if (unformattedMPS2PinyinTextArea == null)
        {
            unformattedMPS2PinyinTextArea = new JTextArea();
            unformattedMPS2PinyinTextArea.setEditable(false);
            unformattedMPS2PinyinTextArea.setLineWrap(true);
        }
        return unformattedMPS2PinyinTextArea;
    }

    private JPanel getUnformattedTongyongPinyinPanel()
    {
        if (unformattedTongyongPinyinPanel == null)
        {
            unformattedTongyongPinyinLabel = new JLabel();
            unformattedTongyongPinyinLabel.setText("Tongyong Pinyin");
            unformattedTongyongPinyinPanel = new JPanel();
            unformattedTongyongPinyinPanel.setLayout(new BorderLayout());
            unformattedTongyongPinyinPanel.add(unformattedTongyongPinyinLabel, "North");
            unformattedTongyongPinyinPanel.add(getUnformattedTongyongPinyinScrollPane(), "Center");
        }
        return unformattedTongyongPinyinPanel;
    }

    private JScrollPane getUnformattedTongyongPinyinScrollPane()
    {
        if (unformattedTongyongPinyinScrollPane == null)
        {
            unformattedTongyongPinyinScrollPane = new JScrollPane();
            unformattedTongyongPinyinScrollPane.setViewportView(getUnformattedTongyongPinyinTextArea());
        }
        return unformattedTongyongPinyinScrollPane;
    }

    private JTextArea getUnformattedTongyongPinyinTextArea()
    {
        if (unformattedTongyongPinyinTextArea == null)
        {
            unformattedTongyongPinyinTextArea = new JTextArea();
            unformattedTongyongPinyinTextArea.setEditable(false);
            unformattedTongyongPinyinTextArea.setLineWrap(true);
        }
        return unformattedTongyongPinyinTextArea;
    }

    private JPanel getUnformattedWadePinyinPanel()
    {
        if (unformattedWadePinyinPanel == null)
        {
            unformattedWadePinyinLabel = new JLabel();
            unformattedWadePinyinLabel.setText("Wade-Giles  Pinyin");
            unformattedWadePinyinPanel = new JPanel();
            unformattedWadePinyinPanel.setLayout(new BorderLayout());
            unformattedWadePinyinPanel.add(unformattedWadePinyinLabel, "North");
            unformattedWadePinyinPanel.add(getUnformattedWadePinyinScrollPane(), "Center");
        }
        return unformattedWadePinyinPanel;
    }

    private JScrollPane getUnformattedWadePinyinScrollPane()
    {
        if (unformattedWadePinyinScrollPane == null)
        {
            unformattedWadePinyinScrollPane = new JScrollPane();
            unformattedWadePinyinScrollPane.setViewportView(getUnformattedWadePinyinTextArea());
        }
        return unformattedWadePinyinScrollPane;
    }

    private JTextArea getUnformattedWadePinyinTextArea()
    {
        if (unformattedWadePinyinTextArea == null)
        {
            unformattedWadePinyinTextArea = new JTextArea();
            unformattedWadePinyinTextArea.setEditable(false);
            unformattedWadePinyinTextArea.setLineWrap(true);
        }
        return unformattedWadePinyinTextArea;
    }

    private JPanel getUnformattedYalePinyinPanel()
    {
        if (unformattedYalePinyinPanel == null)
        {
            unformattedYalePinyinLabel = new JLabel();
            unformattedYalePinyinLabel.setText("Yale Pinyin");
            unformattedYalePinyinPanel = new JPanel();
            unformattedYalePinyinPanel.setLayout(new BorderLayout());
            unformattedYalePinyinPanel.add(unformattedYalePinyinLabel, "North");
            unformattedYalePinyinPanel.add(getUnformattedYalePinyinScrollPane(), "Center");
        }
        return unformattedYalePinyinPanel;
    }

    private JScrollPane getUnformattedYalePinyinScrollPane()
    {
        if (unformattedYalePinyinScrollPane == null)
        {
            unformattedYalePinyinScrollPane = new JScrollPane();
            unformattedYalePinyinScrollPane.setViewportView(getUnformattedYalePinyinTextArea());
        }
        return unformattedYalePinyinScrollPane;
    }

    private JTextArea getUnformattedYalePinyinTextArea()
    {
        if (unformattedYalePinyinTextArea == null)
        {
            unformattedYalePinyinTextArea = new JTextArea();
            unformattedYalePinyinTextArea.setEditable(false);
            unformattedYalePinyinTextArea.setLineWrap(true);
        }
        return unformattedYalePinyinTextArea;
    }

    private JComboBox getVCharTypesComboBox()
    {
        if (vCharTypesComboBox == null)
        {
            vCharTypesComboBox = new JComboBox(vCharTypes);
        }
        return vCharTypesComboBox;
    }

    public static void main(final String appletDemo[])
    {
        appletDemo = new Pinyin4jAppletDemo();
        System.runFinalizersOnExit(true);
        JFrame jframe = new JFrame(appName);
        jframe.addWindowListener(new _cls1());
        jframe.add("Center", appletDemo);
        appletDemo.init();
        appletDemo.start();
        jframe.setSize(APP_SIZE);
        jframe.pack();
        jframe.setVisible(true);
    }

    public void init()
    {
        setSize(APP_SIZE);
        setContentPane(getJContentPane());
        setName(appName);
    }













    private class _cls2
        implements ActionListener
    {

        private final Pinyin4jAppletDemo this$0;

        private String concatPinyinStringArray(String as[])
        {
            StringBuffer stringbuffer = new StringBuffer();
            if (as != null && as.length > 0)
            {
                for (int i = 0; i < as.length; i++)
                {
                    stringbuffer.append(as[i]);
                    stringbuffer.append(System.getProperty("line.separator"));
                }

            }
            return stringbuffer.toString();
        }

        private void updateFormattedTextField(char c, String s, String s1, String s2)
        {
            HanyuPinyinOutputFormat hanyupinyinoutputformat = new HanyuPinyinOutputFormat();
            if (toneTypes[0] == s)
            {
                hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITH_TONE_NUMBER);
            } else
            if (toneTypes[1] == s)
            {
                hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
            } else
            if (toneTypes[2] == s)
            {
                hanyupinyinoutputformat.setToneType(HanyuPinyinToneType.WITH_TONE_MARK);
            }
            if (vCharTypes[0] == s1)
            {
                hanyupinyinoutputformat.setVCharType(HanyuPinyinVCharType.WITH_U_AND_COLON);
            } else
            if (vCharTypes[1] == s1)
            {
                hanyupinyinoutputformat.setVCharType(HanyuPinyinVCharType.WITH_V);
            } else
            if (vCharTypes[2] == s1)
            {
                hanyupinyinoutputformat.setVCharType(HanyuPinyinVCharType.WITH_U_UNICODE);
            }
            if (caseTypes[0] == s2)
            {
                hanyupinyinoutputformat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
            } else
            if (caseTypes[1] == s2)
            {
                hanyupinyinoutputformat.setCaseType(HanyuPinyinCaseType.UPPERCASE);
            }
            s = null;
            s1 = PinyinHelper.toHanyuPinyinStringArray(c, hanyupinyinoutputformat);
            s = s1;
_L2:
            s = concatPinyinStringArray(s);
            formattedOutputField.setText(s);
            return;
            s1;
            s1.printStackTrace();
            if (true) goto _L2; else goto _L1
_L1:
        }

        private void updateUnformattedTextField(char c)
        {
            unformattedHanyuPinyinTextArea.setText(concatPinyinStringArray(PinyinHelper.toHanyuPinyinStringArray(c)));
            unformattedTongyongPinyinTextArea.setText(concatPinyinStringArray(PinyinHelper.toTongyongPinyinStringArray(c)));
            unformattedWadePinyinTextArea.setText(concatPinyinStringArray(PinyinHelper.toWadeGilesPinyinStringArray(c)));
            unformattedMPS2PinyinTextArea.setText(concatPinyinStringArray(PinyinHelper.toMPS2PinyinStringArray(c)));
            unformattedYalePinyinTextArea.setText(concatPinyinStringArray(PinyinHelper.toYalePinyinStringArray(c)));
            unformattedGwoyeuRomatzyhTextArea.setText(concatPinyinStringArray(PinyinHelper.toGwoyeuRomatzyhStringArray(c)));
        }

        public void actionPerformed(ActionEvent actionevent)
        {
            char c = getChineseCharText().charAt(0);
            updateUnformattedTextField(c);
            updateFormattedTextField(c, (String)toneTypesComboBox.getSelectedItem(), (String)vCharTypesComboBox.getSelectedItem(), (String)caseTypesComboBox.getSelectedItem());
        }

        _cls2()
        {
            this$0 = Pinyin4jAppletDemo.this;
        }
    }


    private class _cls3
        implements ActionListener
    {

        private final Pinyin4jAppletDemo this$0;

        public void actionPerformed(ActionEvent actionevent)
        {
            if (toneTypes[2] == (String)toneTypesComboBox.getSelectedItem())
            {
                vCharTypesComboBox.setSelectedIndex(2);
                vCharTypesComboBox.setEnabled(false);
                return;
            } else
            {
                vCharTypesComboBox.setEnabled(true);
                return;
            }
        }

        _cls3()
        {
            this$0 = Pinyin4jAppletDemo.this;
        }
    }


    private class _cls1 extends WindowAdapter
    {

        private final Pinyin4jAppletDemo val$appletDemo;

        public void windowClosing(WindowEvent windowevent)
        {
            appletDemo.stop();
            appletDemo.destroy();
            System.exit(0);
        }

        _cls1()
        {
            appletDemo = pinyin4jappletdemo;
        }
    }

}
