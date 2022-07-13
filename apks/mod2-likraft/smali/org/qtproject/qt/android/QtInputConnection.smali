.class public Lorg/qtproject/qt/android/QtInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "QtInputConnection.java"


# static fields
.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024


# instance fields
.field private m_view:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/QtEditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    .line 129
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    return-void
.end method

.method private setClosing(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/HideKeyboardRunnable;

    invoke-direct {v0}, Lorg/qtproject/qt/android/HideKeyboardRunnable;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 136
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 150
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitCompletion(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 164
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public endBatchEdit()Z
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 143
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 172
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 0

    .line 178
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .line 184
    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-static {v0, p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getExtractedText(III)Lorg/qtproject/qt/android/QtExtractedText;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 190
    :cond_0
    new-instance p2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 191
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialEndOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 192
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->partialStartOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 193
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionEnd:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 194
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->selectionStart:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 195
    iget v0, p1, Lorg/qtproject/qt/android/QtExtractedText;->startOffset:I

    iput v0, p2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 196
    iget-object p1, p1, Lorg/qtproject/qt/android/QtExtractedText;->text:Ljava/lang/String;

    iput-object p1, p2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    return-object p2
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 0

    .line 202
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getSelectedText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 208
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextAfterCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 214
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextBeforeCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    const v0, 0x102002a

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result p1

    return p1

    .line 233
    :pswitch_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_0
    return v1

    .line 226
    :pswitch_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copyURL()Z

    move-result p1

    return p1

    .line 230
    :pswitch_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    move-result p1

    return p1

    .line 224
    :pswitch_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    move-result p1

    return p1

    .line 228
    :pswitch_4
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    move-result p1

    return p1

    .line 222
    :pswitch_5
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    move-result p1

    return p1

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 259
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->finishComposingText()Z

    .line 260
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_2

    .line 262
    iget v0, v0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 274
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 275
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x3d

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 279
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 264
    :cond_1
    new-instance v9, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 265
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 266
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x3d

    .line 268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 269
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 270
    invoke-super {p0, v9}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 286
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 300
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 293
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingText(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setSelection(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 307
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setSelection(II)Z

    move-result p1

    return p1
.end method
