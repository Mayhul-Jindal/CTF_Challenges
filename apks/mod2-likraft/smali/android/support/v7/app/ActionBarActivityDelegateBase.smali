.class Landroid/support/v7/app/ActionBarActivityDelegateBase;
.super Landroid/support/v7/app/ActionBarActivityDelegate;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;,
        Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleToSet:Ljava/lang/CharSequence;

.field private mToolbarListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

.field private mWindowDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 111
    new-instance p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;

    invoke-direct {p1, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/ActionBarActivityDelegateBase;)I
    .locals 0

    .line 79
    iget p0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I
    .locals 0

    .line 79
    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->doInvalidatePanelMenu(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/support/v7/app/ActionBarActivityDelegateBase;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/app/ActionBarActivityDelegateBase;I)I
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->updateStatusGuard(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Landroid/support/v7/app/ActionBarActivityDelegateBase;ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 11

    .line 381
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 388
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 389
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 390
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMajor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 392
    :goto_0
    sget v3, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 394
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedWidthMinor:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 396
    :goto_1
    sget v4, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 397
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 398
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMajor:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 400
    :goto_2
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 402
    sget v5, Landroid/support/v7/appcompat/R$styleable;->Theme_windowFixedHeightMinor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 405
    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 406
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_5

    move-object v1, v3

    :cond_5
    const/4 v3, 0x6

    const/4 v7, 0x5

    const/4 v8, -0x1

    if-eqz v1, :cond_7

    .line 411
    iget v9, v1, Landroid/util/TypedValue;->type:I

    if-eqz v9, :cond_7

    .line 412
    iget v9, v1, Landroid/util/TypedValue;->type:I

    if-ne v9, v7, :cond_6

    .line 413
    invoke-virtual {v1, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    :goto_4
    float-to-int v1, v1

    goto :goto_5

    .line 414
    :cond_6
    iget v9, v1, Landroid/util/TypedValue;->type:I

    if-ne v9, v3, :cond_7

    .line 415
    iget v9, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    iget v10, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v8

    :goto_5
    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v2

    :goto_6
    if-eqz v4, :cond_a

    .line 420
    iget v2, v4, Landroid/util/TypedValue;->type:I

    if-eqz v2, :cond_a

    .line 421
    iget v2, v4, Landroid/util/TypedValue;->type:I

    if-ne v2, v7, :cond_9

    .line 422
    invoke-virtual {v4, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    :goto_7
    float-to-int v2, v2

    goto :goto_8

    .line 423
    :cond_9
    iget v2, v4, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_a

    .line 424
    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v2

    goto :goto_7

    :cond_a
    move v2, v8

    :goto_8
    if-ne v1, v8, :cond_b

    if-eq v2, v8, :cond_c

    .line 429
    :cond_b
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 432
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private callOnPanelClosed(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 1079
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanels:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1080
    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1086
    iget-object p3, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 1091
    iget-boolean p2, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez p2, :cond_2

    return-void

    .line 1094
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/support/v7/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method private checkCloseActionMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .line 1032
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1036
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    .line 1037
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->dismissPopups()V

    .line 1038
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 1040
    invoke-interface {v0, v1, p1}, Landroid/support/v7/internal/app/WindowCallback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 1042
    iput-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mClosingActionMenu:Z

    return-void
.end method

.method private closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1046
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->checkCloseActionMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return-void

    .line 1052
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1054
    iget p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-direct {p0, p2, p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->callOnPanelClosed(ILandroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 1058
    iput-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1059
    iput-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1060
    iput-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    .line 1063
    iput-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 p2, 0x1

    .line 1067
    iput-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 1069
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-ne p2, p1, :cond_2

    .line 1070
    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    :cond_2
    return-void
.end method

.method private doInvalidatePanelMenu(I)V
    .locals 4

    const/4 v0, 0x1

    .line 1161
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    .line 1163
    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 1164
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1165
    iget-object v3, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1166
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1167
    iput-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1170
    :cond_0
    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1171
    iget-object v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->clear()V

    .line 1173
    :cond_1
    iput-boolean v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 1174
    iput-boolean v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 1177
    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1179
    invoke-direct {p0, p1, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1181
    iput-boolean p1, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    const/4 p1, 0x0

    .line 1182
    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method private ensureToolbarListMenuPresenter()V
    .locals 4

    .line 1264
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    .line 1266
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1267
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1269
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1274
    new-instance v0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    sget v2, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    :cond_1
    return-void
.end method

.method private findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 5

    .line 1098
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanels:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1099
    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1101
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 1102
    iget-object v4, v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;
    .locals 3

    .line 1111
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanels:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 1112
    new-array v0, v0, [Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz p2, :cond_1

    .line 1114
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1116
    :cond_1
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanels:[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-object p2, v0

    .line 1119
    :cond_2
    aget-object v0, p2, p1

    if-nez v0, :cond_3

    .line 1121
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;-><init>(I)V

    aput-object v0, p2, p1

    :cond_3
    return-object v0
.end method

.method private initializePanelContent(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 3

    .line 922
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    if-nez v0, :cond_1

    .line 927
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    .line 930
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPanelMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->getListMenuView(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .line 932
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 934
    iget-object p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)V
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iput-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 831
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    return-void
.end method

.method private initializePanelMenu(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z
    .locals 6

    .line 879
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 882
    iget v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v1, :cond_4

    .line 884
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 885
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 886
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 889
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 890
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 891
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 892
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 893
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 896
    :cond_1
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 900
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 902
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 903
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 905
    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    .line 909
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 910
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 914
    :cond_4
    new-instance v1, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 915
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 916
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    return v2
.end method

.method private invalidatePanelMenu(I)V
    .locals 2

    .line 1152
    iget v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    .line 1154
    iget-boolean p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1156
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    :cond_0
    return-void
.end method

.method private openPanel(ILandroid/view/KeyEvent;)V
    .locals 1

    if-nez p1, :cond_0

    .line 774
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 779
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->openPanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method private openPanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 5

    .line 785
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 791
    :cond_0
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 792
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 793
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 794
    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 796
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    return-void

    .line 804
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 805
    iget v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v4}, Landroid/support/v7/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 807
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    return-void

    .line 812
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 816
    :cond_5
    iget-object p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    iget-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    if-eqz p2, :cond_7

    .line 817
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->initializePanelDecor(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)V

    .line 821
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->initializePanelContent(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->hasPanelItems()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 825
    :cond_8
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 826
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    :cond_9
    :goto_2
    return-void
.end method

.method private preparePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 7

    .line 938
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 943
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 947
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 949
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 952
    :cond_2
    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 955
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5

    .line 958
    invoke-interface {v3}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 962
    :cond_5
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_d

    .line 963
    :cond_6
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    .line 964
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->initializePanelMenu(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_8

    :cond_7
    return v1

    :cond_8
    if-eqz v0, :cond_a

    .line 969
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v3, :cond_a

    .line 970
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    if-nez v3, :cond_9

    .line 971
    new-instance v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V

    iput-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    .line 973
    :cond_9
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {v3, v5, v6}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 978
    :cond_a
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 979
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v3

    iget v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    iget-object v6, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v5, v6}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 981
    invoke-virtual {p1, v4}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->setMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    if-eqz v0, :cond_b

    .line 983
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz p1, :cond_b

    .line 985
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {p1, v4, p2}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    :cond_b
    return v1

    .line 991
    :cond_c
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    .line 996
    :cond_d
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1000
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    .line 1001
    iget-object v3, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Landroid/support/v7/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1002
    iput-object v4, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1006
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v3

    iget-object v5, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {v3, v1, v4, v5}, Landroid/support/v7/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_10

    if-eqz v0, :cond_f

    .line 1007
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz p2, :cond_f

    .line 1010
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMenuPresenterCallback:Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionMenuPresenterCallback;

    invoke-interface {p2, v4, v0}, Landroid/support/v7/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 1012
    :cond_f
    iget-object p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_10
    if-eqz p2, :cond_11

    .line 1017
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_11
    const/4 p2, -0x1

    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1019
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_12

    move p2, v2

    goto :goto_3

    :cond_12
    move p2, v1

    :goto_3
    iput-boolean p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    .line 1020
    iget-object p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1021
    iget-object p2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1024
    iput-boolean v2, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    .line 1025
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    .line 1026
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    return v2
.end method

.method private reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 5

    .line 835
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/support/v7/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 839
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object p1

    .line 841
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {v3}, Landroid/support/v7/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 861
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 862
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    .line 863
    invoke-direct {p0, v2, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    .line 864
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p2, v4, p1}, Landroid/support/v7/app/ActionBarActivity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 842
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4

    .line 844
    iget-boolean p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuPosted:Z

    if-eqz p2, :cond_3

    iget p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuFeatures:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_3

    .line 846
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 847
    iget-object p2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 850
    :cond_3
    invoke-direct {p0, v2, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p2

    .line 854
    iget-object v1, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    iget-boolean v1, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshMenuContent:Z

    if-nez v1, :cond_4

    iget-object v1, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v2, v0, v1}, Landroid/support/v7/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 856
    iget-object p2, p2, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-interface {p1, v4, p2}, Landroid/support/v7/internal/app/WindowCallback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 857
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    invoke-interface {p1}, Landroid/support/v7/internal/widget/DecorContentParent;->showOverflowMenu()Z

    :cond_4
    :goto_1
    return-void

    .line 870
    :cond_5
    invoke-direct {p0, v2, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    .line 872
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->refreshDecorView:Z

    .line 873
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    .line 875
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->openPanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .line 1280
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    return-void

    .line 1281
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "supportRequestWindowFeature() must be called before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStatusGuard(I)I
    .locals 8

    .line 1196
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1197
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_9

    .line 1198
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1202
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 1203
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 1204
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1205
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1207
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTempRect1:Landroid/graphics/Rect;

    .line 1208
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTempRect2:Landroid/graphics/Rect;

    .line 1209
    invoke-virtual {v2, v1, p1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1211
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v4}, Landroid/support/v7/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1212
    iget v2, v4, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1213
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v2, :cond_4

    .line 1215
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1217
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1218
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    .line 1219
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1221
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1225
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1226
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_3

    .line 1227
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1228
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    .line 1235
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    .line 1241
    :goto_3
    iget-boolean v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    move p1, v1

    :cond_6
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_4

    .line 1246
    :cond_7
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v2, :cond_8

    .line 1248
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v2, v1

    goto :goto_4

    :cond_8
    move v2, v1

    move v3, v2

    :goto_4
    if-eqz v3, :cond_a

    .line 1252
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    move v2, v1

    .line 1256
    :cond_a
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x8

    .line 1257
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return p1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    return-void
.end method

.method public createSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 3

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 156
    new-instance v0, Landroid/support/v7/internal/app/WindowDecorActionBar;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/app/WindowDecorActionBar;-><init>(Landroid/support/v7/app/ActionBarActivity;Z)V

    .line 157
    iget-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    return-object v0
.end method

.method createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 754
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_5

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "EditText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "CheckBox"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "RadioButton"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "Spinner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 759
    :pswitch_0
    new-instance p1, Landroid/support/v7/internal/widget/TintEditText;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/internal/widget/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    .line 763
    :pswitch_1
    new-instance p1, Landroid/support/v7/internal/widget/TintCheckBox;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    .line 765
    :pswitch_2
    new-instance p1, Landroid/support/v7/internal/widget/TintRadioButton;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/internal/widget/TintRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    .line 761
    :pswitch_3
    new-instance p1, Landroid/support/v7/internal/widget/TintSpinner;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    .line 767
    :pswitch_4
    new-instance p1, Landroid/support/v7/internal/widget/TintCheckedTextView;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/internal/widget/TintCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x56c015e7 -> :sswitch_4
        -0x1440b607 -> :sswitch_3
        0x2e46a6ed -> :sswitch_2
        0x5f7507c3 -> :sswitch_1
        0x63577677 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final ensureSubDecor()V
    .locals 6

    .line 255
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-nez v0, :cond_a

    .line 256
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 262
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 263
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 266
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 267
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v4, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 273
    :goto_0
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 276
    sget v3, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/DecorContentParent;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/DecorContentParent;->setWindowCallback(Landroid/support/v7/internal/app/WindowCallback;)V

    .line 283
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    const/16 v3, 0x9

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    .line 286
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    .line 289
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/DecorContentParent;->initFeature(I)V

    goto :goto_2

    .line 293
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    goto :goto_1

    .line 297
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    .line 301
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_5

    .line 304
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    new-instance v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$2;

    invoke-direct {v3, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$2;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_2

    .line 325
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    check-cast v0, Landroid/support/v7/internal/widget/FitWindowsViewGroup;

    new-instance v3, Landroid/support/v7/app/ActionBarActivityDelegateBase$3;

    invoke-direct {v3, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$3;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    .line 336
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBarActivity;->superSetContentView(Landroid/view/View;)V

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, -0x1

    .line 344
    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 345
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 346
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 350
    instance-of v3, v0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    .line 351
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v3, :cond_8

    .line 356
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 357
    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    .line 360
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->applyFixedSizeWindow()V

    .line 362
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->onSubDecorInstalled()V

    .line 364
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_a

    :cond_9
    const/16 v0, 0x8

    .line 373
    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    :cond_a
    return-void
.end method

.method getHomeAsUpIndicatorAttrId()I
    .locals 1

    .line 711
    sget v0, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 675
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    return v1

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 188
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 140
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mWindowDecor:Landroid/view/ViewGroup;

    .line 142
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 146
    iput-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mEnableDefaultActionBarUp:Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3

    .line 479
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 481
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0, p1}, Landroid/support/v7/internal/app/WindowCallback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 486
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 491
    invoke-direct {p0, p1, v2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    .line 492
    invoke-direct {p0, p1, v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->openPanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 493
    iget-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 749
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 718
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 719
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->performPanelShortcut(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    if-eqz p1, :cond_0

    .line 723
    iput-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isHandled:Z

    :cond_0
    return v0

    .line 733
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mPreparedPanel:Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 734
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    .line 735
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 736
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, p1, v2, p2, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->performPanelShortcut(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 737
    iput-boolean v1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-eqz p2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .line 552
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 556
    iget p1, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->featureId:I

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/app/WindowCallback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 564
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->reopenMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_0
    return p2

    .line 546
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    .line 519
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getPanelState(IZ)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 522
    invoke-direct {p0, v1, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 210
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/internal/app/WindowCallback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStop()V
    .locals 2

    .line 200
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method onSubDecorInstalled()V
    .locals 0

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 465
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 470
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mTitleToSet:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method final performPanelShortcut(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1136
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->isPrepared:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->preparePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;->menu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 1143
    iget-object p3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDecorContentParent:Landroid/support/v7/internal/widget/DecorContentParent;

    if-nez p3, :cond_3

    .line 1144
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->closePanel(Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState;Z)V

    :cond_3
    return v1
.end method

.method public setContentView(I)V
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 226
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 229
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 219
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureSubDecor()V

    .line 235
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 237
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->onSupportContentChanged()V

    return-void
.end method

.method setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 164
    instance-of v1, v0, Landroid/support/v7/internal/app/WindowDecorActionBar;

    if-nez v1, :cond_1

    .line 168
    instance-of v1, v0, Landroid/support/v7/internal/app/ToolbarActionBar;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Landroid/support/v7/internal/app/ToolbarActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setListMenuPresenter(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)V

    .line 175
    :cond_0
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mDefaultWindowCallback:Landroid/support/v7/internal/app/WindowCallback;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/support/v7/internal/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window;Landroid/support/v7/internal/app/WindowCallback;)V

    .line 177
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->ensureToolbarListMenuPresenter()V

    .line 178
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mToolbarListMenuPresenter:Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/app/ToolbarActionBar;->setListMenuPresenter(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)V

    .line 179
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->setSupportActionBar(Landroid/support/v7/app/ActionBar;)V

    .line 180
    invoke-virtual {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/support/v7/internal/app/WindowCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->setWindowCallback(Landroid/support/v7/internal/app/WindowCallback;)V

    .line 181
    invoke-virtual {v0}, Landroid/support/v7/internal/app/ToolbarActionBar;->invalidateOptionsMenu()Z

    return-void

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setSupportProgress(I)V
    .locals 0

    return-void
.end method

.method setSupportProgressBarIndeterminate(Z)V
    .locals 0

    return-void
.end method

.method setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0

    return-void
.end method

.method setSupportProgressBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 2

    if-eqz p1, :cond_3

    .line 573
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 577
    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 579
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 581
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_1

    .line 583
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 587
    :cond_1
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez p1, :cond_2

    .line 589
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 592
    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1

    .line 570
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 8

    .line 605
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 609
    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionModeCallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 610
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 612
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 613
    iget-boolean v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mIsFloating:Z

    if-eqz v2, :cond_1

    .line 614
    new-instance v2, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 615
    new-instance v2, Landroid/widget/PopupWindow;

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 617
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 618
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 620
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 621
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 622
    iget v2, v2, Landroid/util/TypedValue;->data:I

    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 624
    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 625
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 626
    new-instance v2, Landroid/support/v7/app/ActionBarActivityDelegateBase$4;

    invoke-direct {v2, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$4;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    goto :goto_0

    .line 634
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget v5, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ViewStubCompat;

    if-eqz v2, :cond_2

    .line 638
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/internal/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 639
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 644
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v2, :cond_6

    .line 645
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->killMode()V

    .line 646
    new-instance v2, Landroid/support/v7/internal/view/StandaloneActionMode;

    iget-object v5, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    invoke-direct {v2, v1, v5, v0, v3}, Landroid/support/v7/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 648
    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 649
    invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 650
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 651
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {p1, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 652
    iput-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 653
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    .line 654
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 656
    :cond_4
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 659
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 660
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionModeView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    .line 663
    :cond_5
    iput-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 666
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    if-eqz p1, :cond_7

    .line 667
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 669
    :cond_7
    iget-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object p1
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .line 597
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 600
    invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->invalidatePanelMenu(I)V

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 460
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    move-result p1

    return p1

    .line 447
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 448
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionMode:Z

    return v1

    .line 443
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 444
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mOverlayActionBar:Z

    return v1

    .line 439
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 440
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mHasActionBar:Z

    return v1

    .line 455
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 456
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureIndeterminateProgress:Z

    return v1

    .line 451
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->throwFeatureRequestIfSubDecorInstalled()V

    .line 452
    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mFeatureProgress:Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
