.class public Landroid/support/v7/internal/widget/TintSpinner;
.super Landroid/widget/Spinner;
.source "TintSpinner.java"


# static fields
.field private static final TINT_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/TintSpinner;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010081

    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Landroid/support/v7/internal/widget/TintSpinner;->TINT_ATTRS:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/TintTypedArray;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/TintSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 57
    invoke-virtual {p1, p2}, Landroid/support/v7/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 58
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p3, v0, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/TintSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 60
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p3, v0, :cond_1

    .line 61
    invoke-static {p0, p2}, Landroid/support/v7/internal/widget/TintSpinner;->setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private static setPopupBackgroundDrawableV11(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 71
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 76
    instance-of v0, p0, Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
