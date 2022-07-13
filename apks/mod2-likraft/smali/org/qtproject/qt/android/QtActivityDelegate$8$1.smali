.class Lorg/qtproject/qt/android/QtActivityDelegate$8$1;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt/android/QtActivityDelegate$8;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate$8;)V
    .locals 0

    .line 1201
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1204
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$8$1;->this$1:Lorg/qtproject/qt/android/QtActivityDelegate$8;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate$8;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
