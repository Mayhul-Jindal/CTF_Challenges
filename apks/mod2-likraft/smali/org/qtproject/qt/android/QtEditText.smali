.class public Lorg/qtproject/qt/android/QtEditText;
.super Landroid/view/View;
.source "QtEditText.java"


# instance fields
.field m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field m_imeOptions:I

.field m_initialCapsMode:I

.field m_inputType:I

.field m_optionsChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 52
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 54
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    .line 85
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 87
    iput-object p2, p0, Lorg/qtproject/qt/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-void
.end method


# virtual methods
.method public getActivityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 97
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 98
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 99
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 100
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 101
    new-instance p1, Lorg/qtproject/qt/android/QtInputConnection;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtInputConnection;-><init>(Lorg/qtproject/qt/android/QtEditText;)V

    return-object p1
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 59
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    if-ne p1, v0, :cond_0

    return-void

    .line 61
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method

.method public setInitialCapsMode(I)V
    .locals 1

    .line 67
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 76
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 78
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method
