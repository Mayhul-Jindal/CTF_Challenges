.class Lorg/qtproject/qt/android/EditContextView$ContextButton;
.super Landroid/widget/TextView;
.source "EditContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/EditContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextButton"
.end annotation


# instance fields
.field public m_buttonId:I

.field final synthetic this$0:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V
    .locals 2

    .line 72
    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->this$0:Lorg/qtproject/qt/android/EditContextView;

    .line 73
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    iput p3, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    .line 75
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setText(I)V

    .line 76
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x11

    .line 78
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setGravity(I)V

    .line 79
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x106000a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setTextColor(I)V

    .line 80
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1080019

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/EditContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p3, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 84
    invoke-virtual {p0, p3, p2, p3, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setPadding(IIII)V

    .line 85
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setSingleLine()V

    .line 86
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 87
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
