.class Lorg/qtproject/qt/android/QtActivityDelegate$3;
.super Landroid/os/ResultReceiver;
.source "QtActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;Landroid/os/Handler;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    goto :goto_0

    .line 474
    :cond_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    :goto_0
    return-void
.end method
