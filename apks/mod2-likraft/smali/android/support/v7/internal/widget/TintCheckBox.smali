.class public Landroid/support/v7/internal/widget/TintCheckBox;
.super Landroid/widget/CheckBox;
.source "TintCheckBox.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mTintManager:Landroid/support/v7/internal/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    .line 30
    sput-object v0, Landroid/support/v7/internal/widget/TintCheckBox;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006c

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Landroid/support/v7/internal/widget/TintCheckBox;->TINT_ATTRS:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/TintCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    .line 52
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/TintTypedArray;->getTintManager()Landroid/support/v7/internal/widget/TintManager;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/internal/widget/TintCheckBox;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    return-void
.end method


# virtual methods
.method public setButtonDrawable(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintCheckBox;->mTintManager:Landroid/support/v7/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/TintCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
