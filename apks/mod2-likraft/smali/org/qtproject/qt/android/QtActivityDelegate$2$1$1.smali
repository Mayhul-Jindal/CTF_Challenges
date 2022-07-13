.class Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate$2$1;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 421
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$300(Lorg/qtproject/qt/android/QtActivityDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 424
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v1, v1, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v1, v1, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 425
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 426
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v2, v2, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v2, v2, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 427
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_2

    .line 428
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v0, :cond_1

    .line 429
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$500(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_3

    .line 430
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$502(Lorg/qtproject/qt/android/QtActivityDelegate;I)I

    .line 431
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v1, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$x:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v3, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$y:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$width:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$height:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$inputHints:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v7, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$enterKeyType:I

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$600(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_3

    .line 435
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$602(Lorg/qtproject/qt/android/QtActivityDelegate;I)I

    .line 436
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v1, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$x:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v3, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$y:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$width:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$height:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$inputHints:I

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget v7, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$enterKeyType:I

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$700(Lorg/qtproject/qt/android/QtActivityDelegate;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    .line 443
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1$1;->this$2:Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$2;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$728(Lorg/qtproject/qt/android/QtActivityDelegate;I)I

    :cond_3
    :goto_0
    return-void
.end method
