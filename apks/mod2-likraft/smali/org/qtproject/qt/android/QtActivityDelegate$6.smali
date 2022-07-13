.class Lorg/qtproject/qt/android/QtActivityDelegate$6;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 860
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$300(Lorg/qtproject/qt/android/QtActivityDelegate;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 863
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 864
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 865
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 866
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 867
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 869
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    return v1

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 873
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$6;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/qtproject/qt/android/QtLayout;->getLocationOnScreen([I)V

    .line 874
    aget v3, v4, v3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    aget v4, v4, v1

    sub-int/2addr v5, v4

    .line 875
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 874
    invoke-static {v3, v5, v0, v2}, Lorg/qtproject/qt/android/QtNative;->keyboardGeometryChanged(IIII)V

    return v1
.end method
