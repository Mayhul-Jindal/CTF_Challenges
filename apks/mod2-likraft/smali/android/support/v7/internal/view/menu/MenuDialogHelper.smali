.class public Landroid/support/v7/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 170
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 156
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 148
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 110
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object p2, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p2, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 127
    :cond_2
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPresenterCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 5

    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v2, Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    sget v4, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    .line 64
    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 65
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/internal/view/menu/MenuPresenter;)V

    .line 66
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    :goto_0
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 83
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    .line 88
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 90
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object p1, p0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
