.class Lorg/qtproject/qt/android/QtActivityDelegate$4;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
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

    .line 692
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSimilarRotation(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_4

    const/4 v1, 0x2

    if-nez p1, :cond_0

    if-eq p2, v1, :cond_4

    :cond_0
    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_4

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 707
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    .line 708
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    .line 709
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 710
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$902(Lorg/qtproject/qt/android/QtActivityDelegate;I)I

    .line 711
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$900(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLayout;->setActivityDisplayRotation(I)V

    .line 715
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$900(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtLayout;->displayRotation()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate$4;->isSimilarRotation(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$900(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$4;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$1000(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->handleOrientationChanged(II)V

    .line 717
    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 718
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->handleRefreshRateChanged(F)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
