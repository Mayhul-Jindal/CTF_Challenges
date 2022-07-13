.class Lorg/qtproject/qt/android/QtNative$18;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->notifyValueChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$value:Ljava/lang/String;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1004
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$18;->val$viewId:I

    iput-object p2, p0, Lorg/qtproject/qt/android/QtNative$18;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1007
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$18;->val$viewId:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtNative$18;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
