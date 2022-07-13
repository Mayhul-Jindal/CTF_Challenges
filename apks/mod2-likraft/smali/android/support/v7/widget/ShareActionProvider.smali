.class public Landroid/support/v7/widget/ShareActionProvider;
.super Landroid/support/v4/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field private mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 124
    iput v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 129
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const-string v0, "share_history.xml"

    .line 145
    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ShareActionProvider;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ShareActionProvider;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ShareActionProvider;)Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    return-object p0
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 2

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_1

    .line 334
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;Landroid/support/v7/widget/ShareActionProvider$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 336
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 337
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/support/v7/internal/widget/ActivityChooserModel$OnChooseActivityListener;)V

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/internal/widget/ActivityChooserModel;)V

    .line 187
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 188
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionModeShareDrawable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 189
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v0}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/ActionProvider;)V

    .line 194
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 196
    sget v0, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    return-object v1
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 8

    .line 216
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 218
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 219
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    .line 222
    iget v3, p0, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 226
    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 227
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v4, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, v2, :cond_1

    .line 234
    iget-object v5, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v6, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v3, v3, v5}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_1

    .line 238
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 239
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v4, v3, v3, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 173
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 2

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/ActivityChooserModel;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
