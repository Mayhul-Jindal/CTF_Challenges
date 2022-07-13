.class Lorg/qtproject/qt/android/QtActivityDelegate$2;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field final synthetic val$enterKeyType:I

.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIIII)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$x:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$y:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$width:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$height:I

    iput p6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$inputHints:I

    iput p7, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->val$enterKeyType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 407
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$100(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lorg/qtproject/qt/android/QtActivityDelegate$2$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate$2;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 456
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$100(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v0

    iput-boolean v3, v0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    :cond_0
    return-void
.end method
