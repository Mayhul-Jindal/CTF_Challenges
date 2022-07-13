.class Landroid/support/v7/app/ActionBarActivityDelegateHC;
.super Landroid/support/v7/app/ActionBarActivityDelegateBase;
.source "ActionBarActivityDelegateHC.java"

# interfaces
.implements Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# instance fields
.field private mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method onSubDecorInstalled()V
    .locals 2

    .line 41
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateHC;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 62
    new-instance v0, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateHC;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p2, Landroid/support/v7/internal/view/SupportActionModeWrapper;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateHC;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p2, v0, p1}, Landroid/support/v7/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
