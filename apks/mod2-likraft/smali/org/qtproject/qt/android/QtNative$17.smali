.class Lorg/qtproject/qt/android/QtNative$17;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->notifyObjectFocus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 992
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$17;->val$viewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 995
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$17;->val$viewId:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyObjectFocus(I)V

    :cond_0
    return-void
.end method
