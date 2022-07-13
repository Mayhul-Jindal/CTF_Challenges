.class Lorg/qtproject/qt/android/bindings/QtLoader$2;
.super Ljava/lang/Object;
.source "QtLoader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/bindings/QtLoader;->loadApplication(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/bindings/QtLoader;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader$2;->this$0:Lorg/qtproject/qt/android/bindings/QtLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 238
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader$2;->this$0:Lorg/qtproject/qt/android/bindings/QtLoader;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/bindings/QtLoader;->finish()V

    return-void
.end method
