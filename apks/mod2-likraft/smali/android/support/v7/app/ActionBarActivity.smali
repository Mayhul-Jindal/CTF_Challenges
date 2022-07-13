.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActionBarActivity.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$Callback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v7/app/ActionBarDrawerToggle$TmpDelegateProvider;


# instance fields
.field private mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;
    .locals 1

    .line 556
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    if-nez v0, :cond_0

    .line 557
    invoke-static {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->createDelegate(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/ActionBarActivityDelegate;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .line 504
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .line 466
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getV7DrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .line 513
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getV7DrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 206
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 297
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 534
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 233
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .line 385
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 547
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 552
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegate;->createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 170
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->destroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 524
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 527
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 518
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 155
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 160
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->onSupportNavigateUp()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 248
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPostResume()V

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 256
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 238
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegate;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 135
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->onStop()V

    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .line 430
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 435
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 436
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 437
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 440
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 175
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 176
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1

    .line 358
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgress(I)V

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1

    .line 342
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminate(Z)V

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .line 327
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1

    .line 313
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->setSupportProgressBarVisibility(Z)V

    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 1

    .line 228
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method superAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 272
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 276
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method superOnMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 292
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method superOnPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 284
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method superSetContentView(I)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    return-void
.end method

.method superSetContentView(Landroid/view/View;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 268
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 199
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .line 499
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .line 194
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/ActionBarActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->supportRequestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    .line 483
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
