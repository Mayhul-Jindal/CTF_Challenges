.class Lorg/qtproject/qt/android/QtMessageDialogHelper$1;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtMessageDialogHelper;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 195
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 198
    :cond_0
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$002(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 199
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$202(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    .line 201
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    :cond_1
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;

    invoke-direct {v2, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper$1;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 209
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 210
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$500(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 216
    new-instance v0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper$1;)V

    .line 227
    iget-object v6, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v6}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v6

    const v7, 0x1030044

    const/4 v10, -0x2

    const/16 v11, 0xa

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz v6, :cond_4

    .line 229
    new-instance v6, Landroid/widget/TextView;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setId(I)V

    .line 231
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 232
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 234
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v6, v15, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 237
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    invoke-virtual {v15, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    invoke-virtual {v5, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x2

    goto :goto_2

    :cond_4
    move v15, v4

    const/4 v6, 0x0

    .line 244
    :goto_2
    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v9, 0x3

    if-eqz v8, :cond_6

    .line 246
    new-instance v8, Landroid/widget/TextView;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v15, 0x1

    .line 247
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setId(I)V

    .line 248
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 251
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v8, v15, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 254
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    invoke-virtual {v7, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_5

    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 259
    :cond_5
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    :goto_3
    invoke-virtual {v5, v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v15, v3

    move-object v6, v8

    .line 264
    :cond_6
    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 266
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v7}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v7, v15, 0x1

    .line 267
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setId(I)V

    .line 268
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 269
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 271
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    const v8, 0x1030046

    invoke-virtual {v3, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 274
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 275
    invoke-virtual {v0, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_7

    .line 277
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    .line 279
    :cond_7
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    :goto_4
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v3

    move v15, v7

    .line 284
    :cond_8
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 286
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 287
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    add-int/lit8 v7, v15, 0x1

    .line 288
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setId(I)V

    .line 290
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v12, v4

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/qtproject/qt/android/ButtonStruct;

    .line 294
    :try_start_0
    new-instance v0, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    const-string v16, "android.R$attr"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v11, "borderlessButtonStyle"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-direct {v0, v15, v11, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    .line 296
    :goto_6
    new-instance v9, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    :goto_7
    iget-object v0, v13, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v12, :cond_9

    .line 305
    new-instance v0, Landroid/view/View;

    iget-object v12, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v12}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 307
    :try_start_2
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    iget-object v13, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    const-string v15, "dividerVertical"

    invoke-static {v13, v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {v3, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    :cond_9
    :goto_8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v14, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 316
    invoke-virtual {v3, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    goto :goto_5

    .line 321
    :cond_a
    :try_start_3
    new-instance v0, Landroid/view/View;

    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 323
    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    const-string v8, "dividerHorizontal"

    invoke-static {v7, v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    const/4 v8, 0x0

    .line 325
    invoke-virtual {v7, v8, v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_b

    .line 327
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_9

    :cond_b
    const/16 v4, 0xa

    .line 330
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    :goto_9
    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v0

    goto :goto_a

    :catch_3
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    :goto_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v6, :cond_c

    .line 338
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_b

    :cond_c
    const/16 v4, 0xa

    .line 341
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_b
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 342
    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_d
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 346
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 347
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
