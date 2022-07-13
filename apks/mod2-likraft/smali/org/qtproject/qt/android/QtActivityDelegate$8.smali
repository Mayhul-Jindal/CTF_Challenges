.class Lorg/qtproject/qt/android/QtActivityDelegate$8;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->openContextMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field final synthetic val$h:I

.field final synthetic val$w:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$w:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$h:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$x:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1198
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$w:I

    iget v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$h:I

    iget v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$x:I

    iget v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->val$y:I

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtLayout;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1199
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1200
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    .line 1201
    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$8$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$8$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1207
    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$8$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$8$2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1213
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
