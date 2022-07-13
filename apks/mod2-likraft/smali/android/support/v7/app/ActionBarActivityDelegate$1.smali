.class Landroid/support/v7/app/ActionBarActivityDelegate$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Landroid/support/v7/internal/app/WindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegate;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegate;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
