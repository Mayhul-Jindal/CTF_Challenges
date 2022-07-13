.class public Lorg/qtproject/qt/android/QtLayout;
.super Landroid/view/ViewGroup;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private m_activityDisplayRotation:I

.field private m_nativeOrientation:I

.field private m_ownDisplayRotation:I

.field private m_startApplicationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 58
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 59
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 58
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 59
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    .line 58
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 59
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    .line 79
    iput-object p2, p0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 223
    instance-of p1, p1, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    return p1
.end method

.method public displayRotation()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 192
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 229
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public moveChild(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 285
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    .line 286
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/qtproject/qt/android/QtLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 205
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 207
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 209
    iget p5, p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 210
    iget p4, p4, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    .line 212
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 213
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 211
    invoke-virtual {p3, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 149
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->measureChildren(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 159
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 165
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 167
    iget v6, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 168
    iget v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v5, v4

    .line 170
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 171
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p1

    .line 180
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p2

    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/QtLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 97
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    .line 101
    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v6, v7, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v9

    :goto_1
    if-le v1, v2, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    if-eq v6, v7, :cond_3

    return-void

    .line 114
    :cond_3
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v2, v6, :cond_4

    goto :goto_3

    :cond_4
    move v8, v9

    :goto_3
    if-eqz v8, :cond_5

    .line 116
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    move v12, v6

    goto :goto_4

    :cond_5
    move v12, v9

    :goto_4
    if-eqz v8, :cond_6

    .line 117
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    move v13, v6

    goto :goto_5

    :cond_6
    move v13, v9

    :goto_5
    if-eqz v8, :cond_7

    .line 118
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    goto :goto_6

    :cond_7
    move v6, v9

    :goto_6
    if-eqz v8, :cond_8

    .line 119
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v9

    :cond_8
    sub-int/2addr v1, v12

    sub-int v14, v1, v6

    sub-int v1, v2, v13

    sub-int v15, v1, v9

    .line 124
    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v4, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v1, v1

    iget v3, v4, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v6, v3

    iget v3, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v8, v3

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    .line 127
    invoke-virtual {v5}, Landroid/view/Display;->getRefreshRate()F

    move-result v24

    move-wide/from16 v16, v1

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide/from16 v22, v3

    .line 124
    invoke-static/range {v10 .. v24}, Lorg/qtproject/qt/android/QtNative;->setApplicationDisplayMetrics(IIIIIIDDDDF)V

    .line 129
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 130
    iget v2, v0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    iget v3, v0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    if-eq v2, v3, :cond_9

    if-ne v1, v3, :cond_9

    .line 136
    iget v2, v0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtNative;->handleOrientationChanged(II)V

    .line 138
    :cond_9
    iput v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_ownDisplayRotation:I

    .line 140
    iget-object v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    .line 141
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 142
    iput-object v1, v0, Lorg/qtproject/qt/android/QtLayout;->m_startApplicationRunnable:Ljava/lang/Runnable;

    :cond_a
    return-void
.end method

.method public setActivityDisplayRotation(I)V
    .locals 0

    .line 63
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_activityDisplayRotation:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_4

    .line 314
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setNativeOrientation(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/qtproject/qt/android/QtLayout;->m_nativeOrientation:I

    return-void
.end method
