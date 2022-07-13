.class Lorg/qtproject/qt/android/QtNative$11;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->showSoftwareKeyboard(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enterKeyType:I

.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 916
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$11;->val$x:I

    iput p2, p0, Lorg/qtproject/qt/android/QtNative$11;->val$y:I

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$11;->val$width:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$11;->val$height:I

    iput p5, p0, Lorg/qtproject/qt/android/QtNative$11;->val$inputHints:I

    iput p6, p0, Lorg/qtproject/qt/android/QtNative$11;->val$enterKeyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 919
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v1

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$11;->val$x:I

    iget v3, p0, Lorg/qtproject/qt/android/QtNative$11;->val$y:I

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$11;->val$width:I

    iget v5, p0, Lorg/qtproject/qt/android/QtNative$11;->val$height:I

    iget v6, p0, Lorg/qtproject/qt/android/QtNative$11;->val$inputHints:I

    iget v7, p0, Lorg/qtproject/qt/android/QtNative$11;->val$enterKeyType:I

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V

    :cond_0
    return-void
.end method
