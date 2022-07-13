.class Lorg/qtproject/qt/android/HideKeyboardRunnable;
.super Ljava/lang/Object;
.source "QtInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private m_hideTimeStamp:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/qtproject/qt/android/HideKeyboardRunnable;->m_hideTimeStamp:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 94
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 101
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/qtproject/qt/android/HideKeyboardRunnable;->m_hideTimeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    :cond_0
    return-void
.end method
