.class Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

.field final synthetic this$0:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)V
    .locals 8

    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v7, Landroid/support/v7/internal/view/menu/ActionMenuItem;

    invoke-static {p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->access$100(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->access$200(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/internal/app/WindowCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->access$300(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->this$0:Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p1}, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;->access$200(Landroid/support/v7/internal/widget/ToolbarWidgetWrapper;)Landroid/support/v7/internal/app/WindowCallback;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ToolbarWidgetWrapper$1;->mNavItem:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    invoke-interface {p1, v0, v1}, Landroid/support/v7/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
