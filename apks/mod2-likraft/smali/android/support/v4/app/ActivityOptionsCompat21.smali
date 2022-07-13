.class Landroid/support/v4/app/ActivityOptionsCompat21;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat21.java"


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 1

    .line 31
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;
    .locals 5

    if-eqz p1, :cond_0

    .line 40
    array-length v0, p1

    new-array v1, v0, [Landroid/util/Pair;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 42
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    new-instance p1, Landroid/support/v4/app/ActivityOptionsCompat21;

    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V

    return-object p1
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat21;)V
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/support/v4/app/ActivityOptionsCompat21;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-void
.end method
