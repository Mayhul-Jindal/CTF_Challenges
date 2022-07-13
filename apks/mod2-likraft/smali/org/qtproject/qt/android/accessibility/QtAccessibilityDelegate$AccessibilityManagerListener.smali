.class Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 137
    :cond_0
    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 140
    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v4}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$400(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_1
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v2, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$202(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    .line 147
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;

    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {v2, v3, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qt A11y"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$202(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    .line 159
    :cond_3
    :goto_0
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->setActive(Z)V

    return-void
.end method
