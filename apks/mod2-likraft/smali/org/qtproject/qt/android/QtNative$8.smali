.class Lorg/qtproject/qt/android/QtNative$8;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->quitApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 710
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitQtAndroidPlugin()V

    .line 711
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1100()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 713
    :cond_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1200()Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 714
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1200()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void
.end method
