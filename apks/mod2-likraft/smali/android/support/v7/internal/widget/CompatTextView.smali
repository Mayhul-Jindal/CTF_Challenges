.class public Landroid/support/v7/internal/widget/CompatTextView;
.super Landroid/widget/TextView;
.source "CompatTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->CompatTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 51
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CompatTextView_textAllCaps:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_0

    .line 58
    new-instance p2, Landroid/support/v7/internal/text/AllCapsTransformationMethod;

    invoke-direct {p2, p1}, Landroid/support/v7/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/CompatTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method
