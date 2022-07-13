.class Lorg/qtproject/qt/android/CursorView;
.super Landroid/widget/ImageView;
.source "CursorHandle.java"


# instance fields
.field private mHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_offsetX:F

.field private m_offsetY:F

.field private m_pressed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    .line 68
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    return-void
.end method


# virtual methods
.method public adjusted(II)V
    .locals 1

    .line 73
    iget v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 74
    iget p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    if-nez v0, :cond_1

    return v3

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 90
    invoke-virtual {v0, v1, p1}, Lorg/qtproject/qt/android/CursorHandle;->updatePosition(II)V

    goto :goto_0

    .line 97
    :cond_2
    iput-boolean v3, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    .line 83
    iput-boolean v2, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    :goto_0
    return v2
.end method
