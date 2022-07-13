.class Lorg/qtproject/qt/android/QtActivityDelegate$5;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 793
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 797
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$1100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$1200(Lorg/qtproject/qt/android/QtActivityDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$1302(Lorg/qtproject/qt/android/QtActivityDelegate;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$5;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
