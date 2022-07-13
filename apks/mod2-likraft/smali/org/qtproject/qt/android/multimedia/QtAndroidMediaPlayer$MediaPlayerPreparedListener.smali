.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerPreparedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 203
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$000(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;I)V

    .line 204
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-static {v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onDurationChangedNative(IJ)V

    .line 205
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerPreparedListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-static {p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onTrackInfoChangedNative(J)V

    return-void
.end method
