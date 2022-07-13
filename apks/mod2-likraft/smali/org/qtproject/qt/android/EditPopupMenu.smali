.class public Lorg/qtproject/qt/android/EditPopupMenu;
.super Ljava/lang/Object;
.source "EditPopupMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# instance fields
.field private m_buttons:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_layout:Landroid/view/View;

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_view:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    .line 66
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 67
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 77
    new-instance v0, Lorg/qtproject/qt/android/EditContextView;

    invoke-direct {v0, p1, p0}, Lorg/qtproject/qt/android/EditContextView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 78
    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/EditContextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 80
    iput-object p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    return-void
.end method

.method private initOverlay()V
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 91
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 92
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 94
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 96
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public contextButtonClicked(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 184
    :sswitch_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    goto :goto_0

    .line 181
    :sswitch_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    goto :goto_0

    .line 178
    :sswitch_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    .line 187
    :goto_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1040001 -> :sswitch_3
        0x1040003 -> :sswitch_2
        0x104000b -> :sswitch_1
        0x104000d -> :sswitch_0
    .end sparse-switch
.end method

.method public hide()V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 166
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    iget p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object p8, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 8

    .line 156
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v7, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V
    .locals 6

    .line 103
    invoke-direct {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->initOverlay()V

    .line 105
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, p3}, Lorg/qtproject/qt/android/EditContextView;->updateButtons(I)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 107
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 109
    aget v3, v1, v2

    add-int/2addr v3, p1

    const/4 v4, 0x1

    .line 110
    aget v1, v1, v4

    add-int/2addr v1, p2

    .line 112
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v4}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    .line 114
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v4}, Lorg/qtproject/qt/android/EditContextView;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    if-gez v1, :cond_1

    if-eqz p4, :cond_0

    .line 117
    invoke-virtual {p4}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 119
    invoke-virtual {p5}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v1

    invoke-virtual {p6}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v1, :cond_1

    .line 121
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 125
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v5}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, p1

    if-ge v4, v5, :cond_2

    .line 126
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView;->getWidth()I

    move-result v3

    sub-int v3, v0, v3

    :cond_2
    if-gez v3, :cond_3

    move v3, v2

    .line 131
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 134
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 136
    :goto_1
    iput p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    .line 137
    iput p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    .line 138
    iput p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    .line 139
    iput-object p4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 140
    iput-object p5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 141
    iput-object p6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    return-void
.end method
