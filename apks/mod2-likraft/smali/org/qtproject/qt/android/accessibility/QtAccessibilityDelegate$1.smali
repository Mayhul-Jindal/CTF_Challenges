.class Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 438
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$700(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$800(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 3

    const/16 v0, 0x40

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 476
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$900(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 462
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const/16 v2, 0x14d

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$902(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 469
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$900(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 453
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$902(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I

    .line 454
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 455
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    const v2, 0x8000

    invoke-virtual {v0, p1, v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 479
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->performActionForVirtualViewId(IILandroid/os/Bundle;)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method
