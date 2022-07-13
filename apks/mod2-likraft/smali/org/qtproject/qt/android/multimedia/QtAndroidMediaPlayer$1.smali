.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->startProgressWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 303
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-static {v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onProgressUpdateNative(IJ)V

    :cond_0
    return-void
.end method
