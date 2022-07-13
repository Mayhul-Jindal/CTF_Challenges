.class Lorg/qtproject/qt/android/QtNative$21;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->closeContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1200
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->closeContextMenu()V

    :cond_0
    return-void
.end method
