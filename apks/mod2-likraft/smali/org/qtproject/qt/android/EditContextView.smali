.class public Lorg/qtproject/qt/android/EditContextView;
.super Landroid/widget/LinearLayout;
.source "EditContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/EditContextView$ContextButton;,
        Lorg/qtproject/qt/android/EditContextView$OnClickListener;
    }
.end annotation


# static fields
.field public static final COPY_BUTTON:I = 0x2

.field public static final CUT_BUTTON:I = 0x1

.field public static final PASTE_BUTTON:I = 0x4

.field public static final SALL_BUTTON:I = 0x8


# instance fields
.field m_buttons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/EditContextView$ContextButton;",
            ">;"
        }
    .end annotation
.end field

.field m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    .line 115
    iput-object p2, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    .line 116
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x1040003

    .line 118
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x1040001

    .line 119
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x104000b

    .line 120
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x104000d

    .line 121
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    return-void
.end method


# virtual methods
.method addButton(I)V
    .locals 2

    .line 100
    new-instance v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;-><init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V

    .line 101
    iget-object v1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/EditContextView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    check-cast p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 95
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    iget p1, p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/EditContextView$OnClickListener;->contextButtonClicked(I)V

    return-void
.end method

.method public updateButtons(I)V
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x1040003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x1040001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x104000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x104000d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    and-int/2addr p1, v3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    return-void
.end method
