.class Lorg/qtproject/qt/android/QtNative$20;
.super Ljava/lang/Object;
.source "QtNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtNative;->openContextMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$h:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 1186
    iput p1, p0, Lorg/qtproject/qt/android/QtNative$20;->val$x:I

    iput p2, p0, Lorg/qtproject/qt/android/QtNative$20;->val$y:I

    iput p3, p0, Lorg/qtproject/qt/android/QtNative$20;->val$w:I

    iput p4, p0, Lorg/qtproject/qt/android/QtNative$20;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1189
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    iget v1, p0, Lorg/qtproject/qt/android/QtNative$20;->val$x:I

    iget v2, p0, Lorg/qtproject/qt/android/QtNative$20;->val$y:I

    iget v3, p0, Lorg/qtproject/qt/android/QtNative$20;->val$w:I

    iget v4, p0, Lorg/qtproject/qt/android/QtNative$20;->val$h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->openContextMenu(IIII)V

    :cond_0
    return-void
.end method
