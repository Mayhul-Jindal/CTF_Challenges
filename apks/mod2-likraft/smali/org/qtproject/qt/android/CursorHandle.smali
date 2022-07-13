.class public Lorg/qtproject/qt/android/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_attr:I

.field private m_cursorView:Lorg/qtproject/qt/android/CursorView;

.field private m_id:I

.field private m_lastX:I

.field private m_lastY:I

.field private m_layout:Landroid/view/View;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private m_rtl:Z

.field m_yShift:I

.field tolerance:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;IIZ)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 109
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 110
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 115
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 123
    iput-object p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    .line 124
    iput p3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    .line 125
    iput p4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    .line 126
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 127
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p1, 0x5

    const/high16 p3, 0x3f800000    # 1.0f

    .line 129
    invoke-static {p1, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 130
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    rsub-int/lit8 p1, p1, -0x1

    .line 131
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 132
    iput-boolean p5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    return-void
.end method

.method private initOverlay()Z
    .locals 7

    .line 136
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v1, [I

    .line 139
    iget v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 143
    new-instance v3, Lorg/qtproject/qt/android/CursorView;

    invoke-direct {v3, v0, p0}, Lorg/qtproject/qt/android/CursorView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 144
    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/CursorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    const v6, 0x10102c8

    invoke-direct {v3, v0, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    .line 147
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 148
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 149
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 151
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 153
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return v1
.end method


# virtual methods
.method public bottom()I
    .locals 2

    .line 193
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 195
    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/CursorView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 196
    aget v0, v0, v1

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hide()V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setPosition(II)V
    .locals 7

    .line 160
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 163
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v2, v0, [I

    .line 167
    iget-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 169
    aget v4, v1, v3

    add-int/2addr v4, p1

    aget v5, v2, v3

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    .line 170
    aget v1, v1, v5

    add-int/2addr v1, p2

    iget v6, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    add-int/2addr v1, v6

    aget v2, v2, v5

    sub-int/2addr v1, v2

    .line 172
    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    if-ne v2, v5, :cond_0

    .line 173
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    sub-int/2addr v4, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    if-ne v2, v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_2

    :cond_1
    if-ne v2, v5, :cond_3

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_3

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    mul-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    sub-int/2addr v4, v0

    .line 180
    :goto_1
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v4, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 182
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/CursorView;->adjusted(II)V

    goto :goto_2

    .line 184
    :cond_4
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 187
    :goto_2
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 188
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    return-void
.end method

.method public updatePosition(II)V
    .locals 3

    .line 212
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    sub-int/2addr p2, v0

    .line 213
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-le v0, v1, :cond_1

    .line 214
    :cond_0
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt/android/QtNative;->handleLocationChanged(III)V

    .line 215
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 216
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    :cond_1
    return-void
.end method

.method public width()I
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method
