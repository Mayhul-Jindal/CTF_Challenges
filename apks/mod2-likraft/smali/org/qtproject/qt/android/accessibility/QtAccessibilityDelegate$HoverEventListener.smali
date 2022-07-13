.class Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->access$000(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
