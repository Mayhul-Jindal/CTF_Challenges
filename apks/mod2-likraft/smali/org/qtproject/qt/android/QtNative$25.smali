.class Lorg/qtproject/qt/android/QtNative$25;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->insertNativeView(ILandroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$id:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(ILandroid/view/View;IIII)V
    .locals 0

    .line 1268
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$25;->val$id:I

    iput-object p2, p0, Lorg/qtproject/qt/android/QtNative$25;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$25;->val$x:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$25;->val$y:I

    iput p5, p0, Lorg/qtproject/qt/android/QtNative$25;->val$w:I

    iput p6, p0, Lorg/qtproject/qt/android/QtNative$25;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1271
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v1

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$25;->val$id:I

    iget-object v3, p0, Lorg/qtproject/qt/android/QtNative$25;->val$view:Landroid/view/View;

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$25;->val$x:I

    iget v5, p0, Lorg/qtproject/qt/android/QtNative$25;->val$y:I

    iget v6, p0, Lorg/qtproject/qt/android/QtNative$25;->val$w:I

    iget v7, p0, Lorg/qtproject/qt/android/QtNative$25;->val$h:I

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->insertNativeView(ILandroid/view/View;IIII)V

    :cond_0
    return-void
.end method
