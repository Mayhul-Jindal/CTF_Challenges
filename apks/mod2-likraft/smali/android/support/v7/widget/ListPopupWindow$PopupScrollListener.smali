.class Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 0

    .line 1749
    iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/support/v7/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1749
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 1756
    iget-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->access$1100(Landroid/support/v7/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1758
    iget-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->access$1300(Landroid/support/v7/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {p2}, Landroid/support/v7/widget/ListPopupWindow;->access$1200(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1759
    iget-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->access$1200(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
