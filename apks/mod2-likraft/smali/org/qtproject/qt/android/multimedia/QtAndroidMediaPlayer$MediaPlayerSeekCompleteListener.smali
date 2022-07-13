.class Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;
.super Ljava/lang/Object;
.source "QtAndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerSeekCompleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;-><init>(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 220
    iget-object p1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer$MediaPlayerSeekCompleteListener;->this$0:Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;

    invoke-static {v1}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->access$100(Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/multimedia/QtAndroidMediaPlayer;->onProgressUpdateNative(IJ)V

    return-void
.end method
